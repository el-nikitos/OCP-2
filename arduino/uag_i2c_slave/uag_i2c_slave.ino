#include <Wire.h>

#define led_init_output   DDRD |= (1 << 3)
#define led_turn_on       PORTD |= (1 << 3)
#define led_turn_off      PORTD &= ~(1 << 3)

#define out_1_init_output   DDRB |= (1 << 2)
#define out_1_turn_on       PORTB |= (1 << 2)
#define out_1_turn_off      PORTB &= ~(1 << 2)

#define out_2_init_output   DDRB |= (1 << 1)
#define out_2_turn_on       PORTB |= (1 << 1)
#define out_2_turn_off      PORTB &= ~(1 << 1)

#define out_3_init_output   DDRD |= (1 << 7)
#define out_3_turn_on       PORTD |= (1 << 7)
#define out_3_turn_off      PORTD &= ~(1 << 7)

#define out_4_init_output   DDRD |= (1 << 6)
#define out_4_turn_on       PORTD |= (1 << 6)
#define out_4_turn_off      PORTD &= ~(1 << 6)

#define PWM_CHANNEL_1       10
#define PWM_CHANNEL_2       9

#define unit_by_volt  136

#define float_T_A2  2.332134       // /1000 "холодный"
#define float_T_B2  0.001543       // /1000
#define float_T_C2  0.000815       // /1000

#define float_T_A1  2.444174       // /1000 "горячий"
#define float_T_B1  -0.011077      // /1000
#define float_T_C1  0.000839       // /1000

#define i2c_WHO_I_AM  0x11
#define i2c_VERSION   0x01

#define i2c_reg_VERSION         0x04
#define i2c_reg_WHO_I_AM        0x05

#define i2c_reg_TEST_COLD_H     0x09
#define i2c_reg_TEST_COLD_L     0x0A
#define i2c_reg_TEST_HOT_H      0x0B
#define i2c_reg_TEST_HOT_L      0x0C
#define i2c_reg_SUPPLY_V        0x0D
#define i2c_reg_PWR_WT          0x0E
#define i2c_reg_TEMP_COLD_H     0x10
#define i2c_reg_TEMP_COLD_L     0x11
#define i2c_reg_TEMP_HOT_H      0x12
#define i2c_reg_TEMP_HOT_L      0x13


byte  PWR_MEASURE = A0, //PC0
      T_SENSOR_1 = 2,   //PC2
      T_SENSOR_2 = 1;   //PC1

float float_PWR_MEASURE = 0,
      float_T_SENSOR_1 = 0,
      float_T_SENSOR_2 = 0,
      float_dT = 0;

byte  byte_PWR_MEASURE = 0;

word  word_TEST_COLD = 0,
      word_TEST_HOT = 0,
      word_TEMP_COLD = 0,
      word_TEMP_HOT = 0;

byte  byte_counter = 0;
byte  received_byte = 0x00,
      transceive_byte = 0x00;


void setup() {
  // put your setup code here, to run once:
  /*
  led_init_output;
  out_1_init_output;
  out_2_init_output;
  out_3_init_output;
  out_4_init_output;
  */

  pinMode(PWM_CHANNEL_1, OUTPUT);
  pinMode(PWM_CHANNEL_2, OUTPUT);

  analogReference(EXTERNAL);

  Wire.begin( i2c_WHO_I_AM );
  Wire.onRequest(requestEvent);
  Wire.onReceive(receiveEvent);

  delay(1);

  analogWrite(PWM_CHANNEL_1, 10);
  analogWrite(PWM_CHANNEL_2, 10);
}

void loop() {

    float_PWR_MEASURE = analogRead( PWR_MEASURE );
    float_T_SENSOR_1 = analogRead( T_SENSOR_1 );
    float_T_SENSOR_2 = analogRead( T_SENSOR_2 );

    float_PWR_MEASURE = 10 * float_PWR_MEASURE / unit_by_volt; // вычисление текущего входного напряжения

    byte_PWR_MEASURE = round( float_PWR_MEASURE );

    word_TEST_HOT  = analogRead( T_SENSOR_1 );

    word_TEST_COLD  = analogRead( T_SENSOR_2 );
    
/* Пересчет попугаев в сопротивление и температуру для RK1 */
    float U_RK1 = float(word_TEST_HOT)*2.5/1024.0;
    float RK1 = 47000.0*(2.5-U_RK1)/U_RK1;

    float T_RK1 = float_T_A1 + float_T_B1*log(RK1) + float_T_C1*(log(RK1)*log(RK1)*log(RK1));
    T_RK1 = 1000.0/T_RK1 - 273.0;

    word_TEMP_HOT = round( (T_RK1*10) );

/* Пересчет попугаев в сопротивление и температуру для RK2 */
    float U_RK2 = float(word_TEST_COLD)*2.5/1024.0;
    float RK2 = 47000.0*(2.5-U_RK2)/U_RK2;

    float T_RK2 = float_T_A2 + float_T_B2*log(RK2) + float_T_C2*(log(RK2)*log(RK2)*log(RK2));
    T_RK2 = 1000.0/T_RK2 - 273.0;

    word_TEMP_COLD = round( (T_RK2*10) );
}

void receiveEvent() {
  received_byte = 0x01;
  
  while (Wire.available()>0) { 
    received_byte = Wire.read(); // receive byte as a character
  }

  switch (received_byte) {
    case i2c_reg_WHO_I_AM:
    transceive_byte = i2c_WHO_I_AM;
    break;

    case i2c_reg_VERSION:
    transceive_byte = i2c_VERSION;
    break;

    case i2c_reg_SUPPLY_V:
    transceive_byte = byte_PWR_MEASURE;
    break;

    case i2c_reg_TEST_COLD_H:
    transceive_byte = byte( ((word_TEST_COLD & 0xFF00) >> 8) );
    break;

    case i2c_reg_TEST_COLD_L:
    transceive_byte = byte( word_TEST_COLD & 0x00FF );
    break;

    case i2c_reg_TEST_HOT_H:
    transceive_byte = byte( ((word_TEST_HOT & 0xFF00) >> 8) );
    break;

    case i2c_reg_TEST_HOT_L:
    transceive_byte = byte( word_TEST_HOT & 0x00FF );
    break;

    case i2c_reg_TEMP_COLD_H:
    transceive_byte = byte( ((word_TEMP_COLD & 0xFF00) >> 8) );
    break;

    case i2c_reg_TEMP_COLD_L:
    transceive_byte = byte( word_TEMP_COLD & 0x00FF );
    break;

    case i2c_reg_TEMP_HOT_H:
    transceive_byte = byte( ((word_TEMP_HOT & 0xFF00) >> 8) );
    break;

    case i2c_reg_TEMP_HOT_L:
    transceive_byte = byte( word_TEMP_HOT & 0x00FF );
    break;

    default:
    transceive_byte = 0xFF; 
  }
  
}

void requestEvent() {
  Wire.write( transceive_byte );
}
