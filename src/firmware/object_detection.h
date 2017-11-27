#ifndef _OBJECT_DETECTION_H_
#define _OBJECT_DETECTION_H_

#include <vl53l0x.h>

struct sObjectDetectionResult
{
  int distance;
  int bias_value;
  int filtered_value;
  bool event;

};

class CObjectDetection: public CVL53L0X
{
  private:
    unsigned int detection_count_down;
    
  public:
    sObjectDetectionResult result;

  public:
    CObjectDetection();
    ~CObjectDetection();

    int init(CI2C_Interface *i2c);

    void process();
    sObjectDetectionResult get();
};


#endif
