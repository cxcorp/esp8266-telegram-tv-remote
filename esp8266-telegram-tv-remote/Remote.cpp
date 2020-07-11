/*
Copyright 2020 Joona Heikkilä

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/
#include <Arduino.h>
#include "Remote.h"

namespace Remote {

inline void waitMenuAppear() {
  delay(300);
}

inline void waitSliderActivated() {
  delay(300);
}

inline void waitButtonDebounce() {
  delayMicroseconds(2000);
}

inline void waitRepeatDebounce() {
  delay(125);
}

void Remote::begin() {
  irsend.begin();
}

void Remote::setBacklightMax() {
  openMenu();
  navigateMenuToBacklightSlider();
  slideRightAllTheWay();
  closeMenu();
}

void Remote::setBacklightMin() {
  openMenu();
  navigateMenuToBacklightSlider();
  slideLeftAllTheWay();
  closeMenu();
}

void Remote::openMenu() {
  irsend.sendSAMSUNG(BUTTON_MENU, 32);
  waitMenuAppear();
}

void Remote::closeMenu() {
  irsend.sendSAMSUNG(BUTTON_EXIT, 32);
  waitMenuAppear();
}

void Remote::navigateMenuToBacklightSlider() {
  // Display
  irsend.sendSAMSUNG(BUTTON_OK, 32);
  waitButtonDebounce();
  // Backlight
  irsend.sendSAMSUNG(BUTTON_DOWN, 32);
  waitButtonDebounce();
  // Activate backlight slider
  irsend.sendSAMSUNG(BUTTON_OK, 32);
  waitSliderActivated();
}

void Remote::slideLeftAllTheWay() {
  // Intensity is 0-10 but run it to 15 in case
  // we miss a few or debounce is flaky
  for (int i = 0; i < 15; i++) {
    irsend.sendSAMSUNG(BUTTON_LEFT, 32);
    waitRepeatDebounce();
  }
}

void Remote::slideRightAllTheWay() {
  for (int i = 0; i < 15; i++) {
    irsend.sendSAMSUNG(BUTTON_RIGHT, 32);
    waitRepeatDebounce();
  }
}

}
