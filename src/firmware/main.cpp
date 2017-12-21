#include <gpio.h>
#include <rt_timer.h>
#include <terminal.h>

#include <i2c.h>
#include <object_detection.h>

class CMeassureTask: public CTaskInterface
{
  private:
    TI2C<TGPIOC, 0, 5> i2c_a;
    CObjectDetection laser;

    unsigned int cnt;

  public:
    CMeassureTask()
    {
      int init_res;
      init_res = laser.init(&i2c_a);

      cnt = 0;

      terminal << "init result " << init_res << "\n";
    }

    ~CMeassureTask()
    {

    }

    void operator ()()
    {
      laser.process();

      /*
      if (laser.result.event)
      {
        terminal << "object detected at " << timer.get_time() << " " << laser.result.bias_value << " " << laser.result.filtered_value << "\n";
      }
      */

      if ((cnt%10) == 0)
        terminal << "distance " << laser.result.distance << "\n";
      cnt++;

    }
};


int main()
{
  terminal << "\nterminal ready\n\n";

  class CMeassureTask meassure_task;
  timer.add_task(&meassure_task, 10);

  while (1)
  {
    timer.main();
  }

  return 0;
}
