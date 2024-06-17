#include "sys/alt_stdio.h"
#include "io.h"
#include "unistd.h"
#include "system.h"

int main()
{ 
	alt_putstr("Hello from CIC IPN!\n");
	alt_u8 led_initial = 0xF0;
	IOWR(PIO_0_BASE, 0, led_initial);
	while (1){
		led_initial-=1;
		IOWR(PIO_0_BASE, 0, led_initial);
		usleep(1);
	}
	return 0;
}
