/* Copyright 2018 Canaan Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <fpioa.h>
#include <gpio.h>
#include <plic.h>
#include <pwm.h>
#include <stdio.h>
#include <sysctl.h>
#include <syslog.h>
#include <timer.h>
#include <uart.h>

static int ctx_table[TIMER_DEVICE_MAX * TIMER_CHANNEL_MAX];

/**
 * timer_callback()
 */
int timer_callback(void *ctx) {
  static uint16_t flag500ms = 0;

  /**/
  if (++flag500ms == 500) {
    printf("Testing interrupt!\r\n");
    flag500ms = 0;
  }

  return 0;
}

/*
 *
 *   main()
 *
 */
int main(void) {
  /* Init Platform-Level Interrupt Controller(PLIC) */
  // Initialize the interrupt module
  plic_init();

  /*Init timer*/
  timer_init(TIMER_DEVICE_0);  // Timer 0
                               // Parameter 1 timer 0, parameter 2 timer
                               // channel, parameter 3 timing time (nanoseconds)
  timer_set_interval(TIMER_DEVICE_0, TIMER_CHANNEL_0, 1000000);
  // Timer 0, channel 0, timer callback function, priority
  timer_set_irq(TIMER_DEVICE_0, TIMER_CHANNEL_0, timer_callback, 1);
  // Timer 0, channel 0, enable (1)/disable (0)
  timer_set_enable(TIMER_DEVICE_0, TIMER_CHANNEL_0, 1);

  /*Enable timer*/
  sysctl_enable_irq();

  /**
   * loop
   */
  while (1) {
  }

  return 0;
}
