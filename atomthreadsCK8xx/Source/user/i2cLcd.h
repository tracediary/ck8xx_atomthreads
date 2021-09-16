#ifndef __I2CLCD__h
#define __I2CLCD__h

#include "apt32f102.h"
#include "stdio.h"
#include "hardware.h"




#define LCD_CLR							0X01		//清屏，光标复位到00H
#define LCD_CUR_RESET					0X02		//光标到00h，DDRAM内容不变，AC=0
#define LCD_2L_4P						0X28		//开显示，4位数据
#define LCD_ID1_S0						0X06		//文字不动，地址自动加1



#define LCD_DISPLAY						0X08		//只开显示
#define LCD_DISPLAY_ON					0X0C		//开显示，不显示光标
#define LCD_DISPLAY_CUR					0X0E		//开显示，显示光标，不闪
#define LCD_DISPLAY_CUR_TWINKL			0X0F		//开显示，显示光标，闪烁



#define LCD_LEFT						0X18		//字符左移，光标不动
#define LCD_RIGHT						0X1C		//字符右移，光标不动
#define LCD_LEFT_DIV					0X10		//光标左移，AC减1
#define LCD_RIGHT_ADD					0X14		//光标右移，AC加1


// commands
#define LCD_CLEARDISPLAY   0x01
#define LCD_RETURNHOME     0x02
#define LCD_ENTRYMODESET   0x04
#define LCD_DISPLAYCONTROL 0x08
#define LCD_CURSORSHIFT    0x10
#define LCD_FUNCTIONSET    0x20
#define LCD_SETCGRAMADDR   0x40
#define LCD_SETDDRAMADDR   0x80

// flags for function set
#define LCD_8BITMODE       0x10
#define LCD_4BITMODE       0x00
#define LCD_2LINE          0x08
#define LCD_1LINE          0x00
#define LCD_5x10DOTS       0x04
#define LCD_5x8DOTS        0x00

// flags for display on/off control
#define LCD_DISPLAYON      0x04
#define LCD_DISPLAYOFF     0x00
#define LCD_CURSORON       0x02
#define LCD_CURSOROFF      0x00
#define LCD_BLINKON        0x01
#define LCD_BLINKOFF       0x00

// flags for display entry mode
#define LCD_ENTRYRIGHT     0x00
#define LCD_ENTRYLEFT      0x02
#define LCD_ENTRYSHIFTINCREMENT 0x01
#define LCD_ENTRYSHIFTDECREMENT 0x00

#define LCD_BACKLIGHT      0x08
#define LCD_NOBACKLIGHT    0x00



void lcd_clear (void);

void lcd_put_cur(int row, int col);

void lcd_init (void);

void lcd_send_string (char *str);

void closeLed();
void lcd_send_cmd (char cmd);



void LCD1602_I2C_Show_Str(char *str0, char *str1);
void LCD1602_I2C_Play(uint32_t frame, uint8_t mode);


#endif