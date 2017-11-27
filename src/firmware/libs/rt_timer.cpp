#include "rt_timer.h"

volatile unsigned long int g_rt_time;
struct sRTTimer g_rt_tasks[RT_TIMERS_COUNT];


class CRTTimer timer;

CRTTimer::CRTTimer()
{
  for (unsigned int i = 0; i < RT_TIMERS_COUNT; i++)
  {
    g_rt_tasks[i].callback = nullptr;
    g_rt_tasks[i].period = 0;
    g_rt_tasks[i].cnt = 0;
    g_rt_tasks[i].flag = 0;
    g_rt_tasks[i].run_in_interrupt = false;
  }



  // Set the Timer Mode to CTC
  TCCR0A |= (1 << WGM01);

  // Set the value that you want to count to
  OCR0A = ((uint32_t)RT_CPU_FREQUENCY)/(64*RT_FREQUENCY) - 1;
  //249;

  // set prescaler to 64 and start the timer
  TCCR0B = (1 << CS01)|(1 << CS00);

  TIMSK0 |= (1 << OCIE0A);    //Set the ISR COMPA vect

  sei();
}

CRTTimer::~CRTTimer()
{

}

int CRTTimer::add_task(CTaskInterface *callback, unsigned int period_ms, bool run_in_interrupt)
{
  int timer_id = -1;

  cli();
  for (unsigned int i = 0; i < RT_TIMERS_COUNT; i++)
  {
    if (g_rt_tasks[i].callback == nullptr)
    {
      timer_id = i;
      break;
    }
  }
  if (timer_id != -1)
  {
    g_rt_tasks[timer_id].callback = callback;
    g_rt_tasks[timer_id].period = period_ms;
    g_rt_tasks[timer_id].cnt = period_ms;
    g_rt_tasks[timer_id].flag = 0;
    g_rt_tasks[timer_id].run_in_interrupt = run_in_interrupt;
  }
  sei();

  return timer_id;
}

void CRTTimer::main()
{
  for (unsigned int i = 0; i < RT_TIMERS_COUNT; i++)
  {
    if (g_rt_tasks[i].callback != nullptr)
    if (g_rt_tasks[i].flag != 0)
    {
      g_rt_tasks[i].flag = 0;
      if (g_rt_tasks[i].run_in_interrupt == false)
        (*(g_rt_tasks[i].callback))();
    }
  }
}

unsigned long int CRTTimer::get_time()
{
  volatile unsigned long int tmp;

  cli();
  tmp = g_rt_time;
  sei();

  return tmp;
}

void CRTTimer::delay_ms(unsigned long int ms_time)
{
  volatile unsigned long int time_stop = ms_time + get_time();
  while (get_time() < time_stop)
    __asm("nop");
}

void CRTTimer::delay_loops(unsigned long int loops)
{
  while (loops--)
    __asm("nop");
}



ISR(TIMER0_COMPA_vect)
{
  for (unsigned char i = 0; i < RT_TIMERS_COUNT; i++)
  {
    if (g_rt_tasks[i].cnt)
      g_rt_tasks[i].cnt--;
    else
    {
      g_rt_tasks[i].cnt = g_rt_tasks[i].period;

      if (g_rt_tasks[i].flag != 255)
        g_rt_tasks[i].flag++;

      if (g_rt_tasks[i].run_in_interrupt != false)
      {
        (*(g_rt_tasks[i].callback))();
      }
    }
  }

  g_rt_time++;
}
