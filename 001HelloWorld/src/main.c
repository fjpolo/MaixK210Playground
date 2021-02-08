#include <stdio.h>
#include <string.h>

#include "fpioa.h"
#include "gpio.h"
#include "uart.h"

int main() {
  printf("Hello World\n");
  int GPIOHandler = 0;

  /*Init GPIO*/
  GPIOHandler = gpio_init();

  /*Set PI6 (ESP32_TX) function*/
  GPIOHandler = fpioa_set_function(6, FUNC_GPIO6);

  /*Set PI6 as output*/
  gpio_set_drive_mode(6, GPIO_DM_OUTPUT);

  /**
   *
   * MAIN()
   *
   */
  while (1) {
    static uint64_t counter = 0;

    /*Show counter*/
    printf("Counter: %d\r\n", counter);
    /*Set PI6 low*/
    gpio_set_pin(6, GPIO_PV_LOW);
    /*Pseudo-delay*/
    for (int i = 0; i < 10000000; i++) {
    }
    /*Increase counter*/
    counter++;
    /*Set PI6 high*/
    gpio_set_pin(6, GPIO_PV_HIGH);
    /*Pseudo-delay*/
    for (int i = 0; i < 10000000; i++) {
    }
  }
  return 1;
}
