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
#include <ESP8266WiFi.h>
#include <WiFiClientSecure.h>
#include <PolledTimeout.h>
// NOTE: UniversalTelegramBot requires ArduinoJSON >= v5 < 6
#include <UniversalTelegramBot.h>
#include "Remote.h"

#define WIFI_SSID "<ssid>"
#define WIFI_PSK "<psk>"
#define TG_TOKEN "<token>"

const String chatIdWhitelist[] = {"<chat id>"};
const char *TG_API_FINGERPRINT = "F2 AD 29 9C 34 48 DD 8D F4 CF 52 32 F6 57 33 68 2E 81 C1 90";

esp8266::polledTimeout::oneShotMs tgPollTimeout(1000);

const uint16_t irLedPin = D2;
Remote::Remote remote(irLedPin);

WiFiClientSecure client;
UniversalTelegramBot bot(TG_TOKEN, client);

bool isChatIdAllowed(String &chatId) {
  for (size_t i = 0; i < sizeof(chatIdWhitelist) / sizeof(chatIdWhitelist[0]); i++) {
    if (chatId == chatIdWhitelist[i]) {
      return true;
    }
  }
  return false;
}

void setup() {
  Serial.begin(115200, SERIAL_8N1, SERIAL_TX_ONLY);
  Serial.println("Initializing...");
  remote.begin();

  client.setFingerprint(TG_API_FINGERPRINT);
  WiFi.mode(WIFI_STA);
  WiFi.begin(WIFI_SSID, WIFI_PSK);

  Serial.print("Connecting...");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(500);
  }
  Serial.println("");
  Serial.println("Connected. Beginning polling.");
}


void loop() {
  if (!tgPollTimeout) {
    return;
  }

  int numNewMessages = bot.getUpdates(bot.last_message_received + 1);

  while (numNewMessages) {
    for (int i = 0; i < numNewMessages; i++) {
      struct telegramMessage msg = bot.messages[i];
      if (!isChatIdAllowed(msg.chat_id)) {
        continue;
      }

      if (msg.text == "/up") {
        Serial.println("Brightness up");
        remote.setBacklightMax();
      } else if (msg.text == "/down") {
        Serial.println("Brightness down");
        remote.setBacklightMin();
      }
    }

    numNewMessages = bot.getUpdates(bot.last_message_received + 1);
    yield();
  }

  tgPollTimeout.reset();
}
