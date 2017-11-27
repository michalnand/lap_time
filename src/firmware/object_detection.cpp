#include "object_detection.h"


CObjectDetection::CObjectDetection()
{

}

CObjectDetection::~CObjectDetection()
{

}

int CObjectDetection::init(CI2C_Interface *i2c)
{
  result.distance = 0;
  result.bias_value = 0;
  result.filtered_value = 0;
  result.event = false;

  detection_count_down = 0;

  return CVL53L0X::init(i2c);
}

void CObjectDetection::process()
{
  read();

  int raw = get_distance();


  result.distance = raw;
  result.bias_value = (result.bias_value*31 + result.distance)/32;
  result.filtered_value = result.distance - result.bias_value;

  if ((result.filtered_value < -10) && (detection_count_down == 0))
  {
    result.event = true;
    detection_count_down = 20;
  }
  else
    result.event = false;

  if (detection_count_down)
    detection_count_down--;
}

sObjectDetectionResult CObjectDetection::get()
{
    return result;
}
