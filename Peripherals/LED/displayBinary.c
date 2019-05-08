#include<reg51.h>
#define leds P0
void display_binary(char ch)
{
	leds=ch^(0x0f);
}