#include "etherShield.h"
#include "ETHER_28J60.h"

#define DOUT_1    0xB0
#define DOUT_2    0xD7
#define DOUT_3    0xD6
#define DOUT_4    0xD5
#define DOUT_5    0xB7
#define DOUT_6    0xB6
/*
#define DOUT_7    0xD7
#define DOUT_8    0xD6
#define DOUT_9    0xD5
#define DOUT_10   0xB7
*/
#define ETH_RES   0xB1

static uint8_t mac[6] = {0x54, 0x55, 0x58, 0x10, 0x00, 0x24};
static uint8_t ip[4] = {192, 168, 137, 15};
static uint16_t port = 80;

ETHER_28J60 ethernet;

byte byte_m_output = 0, // 0b[RES, RES, DOUT_6, DOUT_5,  DOUT_4, DOUT_3, DOUT_2, DOUT_1]
     byte_s_output = 0, // 0b[RES, RES,    RES,    RES, DOUT_10, DOUT_9, DOUT_8, DOUT_7]
     byte_m_input = 0,
     byte_s_input = 0;

void setup() {
  _pinMode(DOUT_1, OUTPUT);
  _pinMode(DOUT_2, OUTPUT);
  _pinMode(DOUT_3, OUTPUT);
  _pinMode(DOUT_4, OUTPUT);
  _pinMode(DOUT_5, OUTPUT);
  _pinMode(DOUT_6, OUTPUT);
  
  _pinMode(ETH_RES, OUTPUT);

  _digitalWrite(ETH_RES, HIGH);
  _digitalWrite(DOUT_1, LOW);
  _digitalWrite(DOUT_2, LOW);
  _digitalWrite(DOUT_3, LOW);
  _digitalWrite(DOUT_4, LOW);
  _digitalWrite(DOUT_5, LOW);
  _digitalWrite(DOUT_6, LOW);

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

  if ( (byte_m_output&0b00000001)>0 )  {
    http_dout_draw( "H", "1", "off" );
  } else {
    http_dout_draw( "L", "1", "on" );
  }
  //
  if ( (byte_m_output&0b00000010)>0 )  {
    http_dout_draw( "H", "2", "off" );
  } else {
    http_dout_draw( "L", "2", "on" );
  }
  //
  if ( (byte_m_output&0b00000100)>0 )  {
    http_dout_draw( "H", "3", "off" );
  } else {
    http_dout_draw( "L", "3", "on" );
  }
  //
  if ( (byte_m_output&0b00001000)>0 )  {
    http_dout_draw( "H", "4", "off" );
  } else {
    http_dout_draw( "L", "4", "on" );
  }
  //
  if ( (byte_m_output&0b00010000)>0 )  {
    http_dout_draw( "H", "5", "off" );
  } else {
    http_dout_draw( "L", "5", "on" );
  }
  //
  if ( (byte_m_output&0b00100000)>0 )  {
    http_dout_draw( "H", "6", "off" );
  } else {
    http_dout_draw( "L", "6", "on" );
  }
  //
  if ( (byte_s_output&0b00000001)>0 )  {
    http_dout_draw( "H", "7", "off" );
  } else {
    http_dout_draw( "L", "7", "on" );
  }
  //
  if ( (byte_s_output&0b00000010)>0 )  {
    http_dout_draw( "H", "8", "off" );
  } else {
    http_dout_draw( "L", "8", "on" );
  }
  //
  if ( (byte_s_output&0b00000100)>0 )  {
    http_dout_draw( "H", "9", "off" );
  } else {
    http_dout_draw( "L", "9", "on" );
  }
  //
  if ( (byte_s_output&0b00001000)>0 )  {
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
    byte_m_output |= (1<<0);
  }
  if (strcmp(http_get, "1off") == 0) {
    byte_m_output &= ~(1<<0);
  }
  //
  if (strcmp(http_get, "2on") == 0) {
    byte_m_output |= (1<<1);
  }
  if (strcmp(http_get, "2off") == 0) {
    byte_m_output &= ~(1<<1);
  }
  //
  
  if (strcmp(http_get, "3on") == 0) {
    byte_m_output |= (1<<2);
  }
  if (strcmp(http_get, "3off") == 0) {
    byte_m_output &= ~(1<<2);
  }
  //
  if (strcmp(http_get, "4on") == 0) {
    byte_m_output |= (1<<3);
  }
  if (strcmp(http_get, "4off") == 0) {
    byte_m_output &= ~(1<<3);
  }
  //
  if (strcmp(http_get, "5on") == 0) {
    byte_m_output |= (1<<4);
  }
  if (strcmp(http_get, "5off") == 0) {
    byte_m_output &= ~(1<<4);
  }
  //
  if (strcmp(http_get, "6on") == 0) {
    byte_m_output |= (1<<5);
  }
  if (strcmp(http_get, "6off") == 0) {
    byte_m_output &= ~(1<<5);
  }
  //
  if (strcmp(http_get, "7on") == 0) {
    byte_s_output |= (1<<0);
  }
  if (strcmp(http_get, "7off") == 0) {
    byte_s_output &= ~(1<<0);
  }
  //
  if (strcmp(http_get, "8on") == 0) {
    byte_s_output |= (1<<1);
  }
  if (strcmp(http_get, "8off") == 0) {
    byte_s_output &= ~(1<<1);
  }
  //
  if (strcmp(http_get, "9on") == 0) {
    byte_s_output |= (1<<2);
  }
  if (strcmp(http_get, "9off") == 0) {
    byte_s_output &= ~(1<<2);
  }
  //
  if (strcmp(http_get, "10on") == 0) {
    byte_s_output |= (1<<3);
  }
  if (strcmp(http_get, "10off") == 0) {
    byte_s_output &= ~(1<<3);
  }
  //
}

void update_outputs() {
  if ( (byte_m_output&0b00000001)>0 )  {
    _digitalWrite(DOUT_1, HIGH);
  } else {
    _digitalWrite(DOUT_1, LOW);
  }
  
  if ( (byte_m_output&0b00000010)>0 )  {
    _digitalWrite(DOUT_2, HIGH);
  } else {
    _digitalWrite(DOUT_2, LOW);
  }

  if ( (byte_m_output&0b00000100)>0 )  {
    _digitalWrite(DOUT_3, HIGH);
  } else {
    _digitalWrite(DOUT_3, LOW);
  }

  if ( (byte_m_output&0b00001000)>0 )  {
    _digitalWrite(DOUT_4, HIGH);
  } else {
    _digitalWrite(DOUT_4, LOW);
  }

  if ( (byte_m_output&0b00010000)>0 )  {
    _digitalWrite(DOUT_5, HIGH);
  } else {
    _digitalWrite(DOUT_5, LOW);
  }

  if ( (byte_m_output&0b00100000)>0 )  {
    _digitalWrite(DOUT_6, HIGH);
  } else {
    _digitalWrite(DOUT_6, LOW);
  }
/*
  if (DOUT_7_turnon == true)  {
    _digitalWrite(DOUT_7, HIGH);
  } else {
    _digitalWrite(DOUT_7, LOW);
  }

  if (DOUT_8_turnon == true)  {
    _digitalWrite(DOUT_8, HIGH);
  } else {
    _digitalWrite(DOUT_8, LOW);
  }

  if (DOUT_9_turnon == true)  {
    _digitalWrite(DOUT_9, HIGH);
  } else {
    _digitalWrite(DOUT_9, LOW);
  }

  if (DOUT_10_turnon == true)  {
    _digitalWrite(DOUT_10, HIGH);
  } else {
    _digitalWrite(DOUT_10, LOW);
  }
*/
}
