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
#ifndef ESP8266_TG_TV_REMOTE_REMOTE_H
#define ESP8266_TG_TV_REMOTE_REMOTE_H

#include <IRremoteESP8266.h>
#include <IRsend.h>

namespace Remote {

#define BUTTON_MENU 0xE0E058A7
#define BUTTON_OK 0xE0E016E9
#define BUTTON_DOWN 0xE0E08679
#define BUTTON_LEFT 0xE0E0A659
#define BUTTON_RIGHT 0xE0E046B9
#define BUTTON_EXIT 0xE0E0B44B

class Remote {
public:
  Remote(const uint8_t irPin): irsend(IRsend(irPin)) {}
  void begin();
  void setBacklightMax();
  void setBacklightMin();

private:
  IRsend irsend;

  void openMenu();
  void closeMenu();
  void navigateMenuToBacklightSlider();
  void slideLeftAllTheWay();
  void slideRightAllTheWay();

};

}

#endif
