#ifndef _RT_TIMER_H_
#define _RT_TIMER_H_

#include <avr/io.h>
#include <avr/interrupt.h>

#define RT_TIMERS_COUNT    8

#define RT_CPU_FREQUENCY    (uint32_t)16000000    //16MHz
#define RT_FREQUENCY        (uint32_t)1000        //1000Hz


class CTaskInterface
{
  public:
    CTaskInterface()
    {

    }

    virtual ~CTaskInterface()
    {

    }

    virtual void operator ()()
    {

    }
};


struct sRTTimer
{
  CTaskInterface *callback;
  unsigned int period, cnt;
  unsigned char flag;
  bool run_in_interrupt;
};


class CRTTimer
{

  public:
    CRTTimer();
    ~CRTTimer();

    int add_task(CTaskInterface *callback, unsigned int period_ms, bool run_in_interrupt = false);
    void main();

    unsigned long int get_time();
    void delay_ms(unsigned long int ms_time);
    void delay_loops(unsigned long int loops);
};

extern class CRTTimer timer;


#endif
