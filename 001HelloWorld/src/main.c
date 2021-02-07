#include <stdio.h>
#include <string.h>

#include "fpioa.h"
#include "gpio.h"
#include "uart.h"

int main() {
  printf("Hello World\n");

  /**/
   uint64_t counter = 0;
  while (1) {
    printf("Test: %d\r\n", counter);
    for (int i = 0; i < 1000000; i++) {
    }
    counter++;
  }
  return 1;
}
