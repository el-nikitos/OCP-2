#include "etherShield.h"
#include "ETHER_28J60.h"

#define DOUT_1    8
#define DOUT_2    7
#define DOUT_3    6
#define DOUT_4    5
#define DOUT_5    0xB7
#define ETH_RES   9

static uint8_t mac[6] = {0x54, 0x55, 0x58, 0x10, 0x00, 0x24};
static uint8_t ip[4] = {192, 168, 137, 15};
static uint16_t port = 80;

boolean DOUT_1_turnon = false,
        DOUT_2_turnon = false,
        DOUT_3_turnon = false,
        DOUT_4_turnon = false,
        DOUT_5_turnon = false,
        DOUT_6_turnon = false,
        DOUT_7_turnon = false,
        DOUT_8_turnon = false,
        DOUT_9_turnon = false,
        DOUT_10_turnon = false;

ETHER_28J60 ethernet;

void setup() {
  pinMode(DOUT_1, OUTPUT);
  pinMode(DOUT_2, OUTPUT);
  pinMode(DOUT_3, OUTPUT);
  pinMode(DOUT_4, OUTPUT);
  
  _pinMode(DOUT_5, OUTPUT);
  
  pinMode(ETH_RES, OUTPUT);

  digitalWrite(ETH_RES, HIGH);
  digitalWrite(DOUT_1, LOW);
  digitalWrite(DOUT_2, LOW);
  digitalWrite(DOUT_3, LOW);
  digitalWrite(DOUT_4, LOW);
  _digitalWrite(DOUT_5, LOW);

  ethernet.setup(mac, ip, port);

  delay(10000);
}

void loop() {
  char* params;
  
  if (params = ethernet.serviceRequest())
  {
    request_execution( params );

    http_TX();
    
    ethernet.respond();
  }
  
  //test_blink();
  update_outputs();
  delay(10);
}

void http_TX(){
  ethernet.print("<A HREF='/'>refresh</A></p>\n");

  if (DOUT_1_turnon == true)  {
    http_dout_draw( "H", "1", "off" );
  } else {
    http_dout_draw( "L", "1", "on" );
  }
  //
  if (DOUT_2_turnon == true)  {
    http_dout_draw( "H", "2", "off" );
  } else {
    http_dout_draw( "L", "2", "on" );
  }
  //
  if (DOUT_3_turnon == true)  {
    http_dout_draw( "H", "3", "off" );
  } else {
    http_dout_draw( "L", "3", "on" );
  }
  //
  if (DOUT_4_turnon == true)  {
    http_dout_draw( "H", "4", "off" );
  } else {
    http_dout_draw( "L", "4", "on" );
  }
  //
  if (DOUT_5_turnon == true)  {
    http_dout_draw( "H", "5", "off" );
  } else {
    http_dout_draw( "L", "5", "on" );
  }
  //
  if (DOUT_6_turnon == true)  {
    http_dout_draw( "H", "6", "off" );
  } else {
    http_dout_draw( "L", "6", "on" );
  }
  //
  if (DOUT_7_turnon == true)  {
    http_dout_draw( "H", "7", "off" );
  } else {
    http_dout_draw( "L", "7", "on" );
  }
  //
  if (DOUT_8_turnon == true)  {
    http_dout_draw( "H", "8", "off" );
  } else {
    http_dout_draw( "L", "8", "on" );
  }
  //
  if (DOUT_9_turnon == true)  {
    http_dout_draw( "H", "9", "off" );
  } else {
    http_dout_draw( "L", "9", "on" );
  }
  //
  if (DOUT_10_turnon == true)  {
    http_dout_draw( "H", "10", "off" );
  } else {
    http_dout_draw( "L", "10", "on" );
  }
  //
}

void http_dout_draw(char* str_status, char* str_channel, char* str_new_status) {
  ethernet.print( "<b>OUT" );//out1_off
  ethernet.print( str_channel );
  ethernet.print( ":" );
  ethernet.print( str_status );
  ethernet.print( "</b>" );
  ethernet.print( "<A HREF='" );
  ethernet.print( str_channel );
  ethernet.print( str_new_status );
  ethernet.print( "'> Turn " );
  ethernet.print( str_new_status );
  ethernet.print( "</A>" );

  ethernet.print("</p>\n");
}

void request_execution(char* http_get){
  if (strcmp(http_get, "1on") == 0) {
    DOUT_1_turnon = true;
  }
  if (strcmp(http_get, "1off") == 0) {
    DOUT_1_turnon = false;
  }
  //
  if (strcmp(http_get, "2on") == 0) {
    DOUT_2_turnon = true;
  }
  if (strcmp(http_get, "2off") == 0) {
    DOUT_2_turnon = false;
  }
  //
  
  if (strcmp(http_get, "3on") == 0) {
    DOUT_3_turnon = true;
  }
  if (strcmp(http_get, "3off") == 0) {
    DOUT_3_turnon = false;
  }
  //
  if (strcmp(http_get, "4on") == 0) {
    DOUT_4_turnon = true;
  }
  if (strcmp(http_get, "4off") == 0) {
    DOUT_4_turnon = false;
  }
  //
  if (strcmp(http_get, "5on") == 0) {
    DOUT_5_turnon = true;
  }
  if (strcmp(http_get, "5off") == 0) {
    DOUT_5_turnon = false;
  }
  //
}

void update_outputs() {
  if (DOUT_1_turnon == true)  {
    digitalWrite(DOUT_1, HIGH);
  } else {
    digitalWrite(DOUT_1, LOW);
  }
  
  if (DOUT_2_turnon == true)  {
    digitalWrite(DOUT_2, HIGH);
  } else {
    digitalWrite(DOUT_2, LOW);
  }

  if (DOUT_3_turnon == true)  {
    digitalWrite(DOUT_3, HIGH);
  } else {
    digitalWrite(DOUT_3, LOW);
  }

  if (DOUT_4_turnon == true)  {
    digitalWrite(DOUT_4, HIGH);
  } else {
    digitalWrite(DOUT_4, LOW);
  }

  if (DOUT_5_turnon == true)  {
    _digitalWrite(DOUT_5, HIGH);
  } else {
    _digitalWrite(DOUT_5, LOW);
  }
}
