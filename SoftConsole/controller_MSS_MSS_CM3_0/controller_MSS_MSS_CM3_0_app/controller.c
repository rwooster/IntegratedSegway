#include <stdio.h>
#include "drivers/mss_uart/mss_uart.h"

#define CONTROLLER_ADDR 0x40050000

uint8_t getA(uint32_t buttons){
	return (buttons >> 24) & 0x1;
}

uint8_t getB(uint32_t buttons){
	return (buttons >> 25) & 0x1;
}

uint8_t getX(uint32_t buttons){
	return (buttons >> 26) & 0x1;
}

uint8_t getY(uint32_t buttons){
	return (buttons >> 27) & 0x1;
}

uint8_t getStart(uint32_t buttons){
	return (buttons >> 28) & 0x1;
}

uint8_t getL(uint32_t buttons){
	return (buttons >> 22) & 0x1;
}

uint8_t getR(uint32_t buttons){
	return (buttons >> 21) & 0x1;
}

uint8_t getZ(uint32_t buttons){
	return (buttons >> 20) & 0x1;
}

uint8_t getDUP(uint32_t buttons){
	return (buttons >> 19) & 0x1;
}

uint8_t getDDOWN(uint32_t buttons){
	return (buttons >> 18) & 0x1;
}

uint8_t getDRIGHT(uint32_t buttons){
	return (buttons >> 17) & 0x1;
}

uint8_t getDLEFT(uint32_t buttons){
	return (buttons >> 16) & 0x1;
}

uint8_t getJoyX(uint32_t buttons){
	return (buttons >> 8) & 0xFF;
}

uint8_t getJoyY(uint32_t buttons){
	return buttons & 0xFF;
}

void printButtons(uint32_t buttonPack){
	printf("Joystick X Position: %d\t ", getJoyX(buttonPack) );
	printf("Joystick Y Position: %d\t ", getJoyY(buttonPack) );
	printf("A: %d ", getA(buttonPack) );
	printf("B: %d ", getB(buttonPack) );
	printf("X: %d ", getX(buttonPack) );
	printf("Y: %d ", getY(buttonPack) );
	printf("Start: %d ", getStart(buttonPack) );
	printf("L: %d ", getL(buttonPack) );
	printf("R: %d ", getR(buttonPack) );
	printf("Z: %d ", getZ(buttonPack) );
	printf("D-up: %d ", getDUP(buttonPack) );
	printf("D-down: %d ", getDDOWN(buttonPack) );
	printf("D-right: %d ", getDRIGHT(buttonPack) );
	printf("D-left: %d\r\n", getDLEFT(buttonPack) );

}

/*
int main()
{
	uint32_t *controller = (uint32_t *) CONTROLLER_ADDR;

	while( 1 )
	{
		uint32_t buttons = *controller;

		printButtons(buttons);
		//volatile int i;
		//for(i = 0; i < 100; i++);
	}
}
*/
