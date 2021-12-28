#include "etherShield.h"
#include "ETHER_28J60.h"

#define DOUT_1    8
#define DOUT_2    7
#define DOUT_3    6
#define DOUT_4    5
//#define DOUT_5 
#define ETH_RES   9

static uint8_t mac[6] = {0x54, 0x55, 0x58, 0x10, 0x00, 0x24};
static uint8_t ip[4] = {192, 168, 137, 15};
static uint16_t port = 80;

boolean DOUT_1_turnon = false,
        DOUT_2_turnon = false,
        DOUT_3_turnon = false,
        DOUT_4_turnon = false;

ETHER_28J60 ethernet;

char* str_ref_turn_on = " Turn on</A>",
      str_ref_turn_off = " Turn off</A>";

void setup() {
  pinMode(DOUT_1, OUTPUT);
  pinMode(DOUT_2, OUTPUT);
  pinMode(DOUT_3, OUTPUT);
  pinMode(DOUT_4, OUTPUT);
  //pinMode(DOUT_5, OUTPUT);
  pinMode(ETH_RES, OUTPUT);

  digitalWrite(ETH_RES, HIGH);
  digitalWrite(DOUT_1, LOW);
  digitalWrite(DOUT_2, LOW);
  digitalWrite(DOUT_3, LOW);
  digitalWrite(DOUT_4, LOW);
  //digitalWrite(DOUT_5, LOW);

  ethernet.setup(mac, ip, port);
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
  ethernet.print("<H1>DOUT channales</H1>");
  int i = 1;

  if (DOUT_1_turnon == true)  {
    http_dout_draw( "H", "1", "off" );
  } else {
    http_dout_draw( "L", "1", "on" );
  }
  ethernet.print("</p>");
  //
  if (DOUT_2_turnon == true)  {
    http_dout_draw( "H", "2", "off" );
  } else {
    http_dout_draw( "L", "2", "on" );
  }
  ethernet.print("</p>");
  //
  if (DOUT_3_turnon == true)  {
    http_dout_draw( "H", "3", "off" );
  } else {
    http_dout_draw( "L", "3", "on" );
  }
  ethernet.print("</p>");
  //
  if (DOUT_4_turnon == true)  {
    http_dout_draw( "H", "4", "off" );
  } else {
    http_dout_draw( "L", "4", "on" );
  }
  ethernet.print("</p>");
  //
}

void http_dout_draw(char* str_status, char* str_channel, char* str_new_status) {
  ethernet.print( "<b>OUT" );//out1_off
  ethernet.print( str_channel );
  ethernet.print( ":" );
  ethernet.print( str_status );
  ethernet.print( "</b>" );
  ethernet.print( "<A HREF='out" );
  ethernet.print( str_channel );
  ethernet.print( str_new_status );
  ethernet.print( "'> Turn " );
  ethernet.print( str_new_status );
  ethernet.print( "</A>" );

}

void request_execution(char* http_get){
  if (strcmp(http_get, "out1on") == 0) {
    DOUT_1_turnon = true;
  }
  if (strcmp(http_get, "out1off") == 0) {
    DOUT_1_turnon = false;
  }
  //
  if (strcmp(http_get, "out2on") == 0) {
    DOUT_2_turnon = true;
  }
  if (strcmp(http_get, "out2off") == 0) {
    DOUT_2_turnon = false;
  }
  //
  
  if (strcmp(http_get, "out3on") == 0) {
    DOUT_3_turnon = true;
  }
  if (strcmp(http_get, "out3off") == 0) {
    DOUT_3_turnon = false;
  }
  //
  if (strcmp(http_get, "out4on") == 0) {
    DOUT_4_turnon = true;
  }
  if (strcmp(http_get, "out4off") == 0) {
    DOUT_4_turnon = false;
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
}
