#include "stdio.h"
#include "usbstk5505.h"
#include "Dsplib.h"
#include "filtr.h"
#include "TMS320.h"

DATA buffor[202+2];
int input;
int output;
int input_table[1024];
int output_table[1024];
int i=0;

void main( void ) 
{
   for(;;i++)
   {
	   asm(" bclr XF");
	   fir((DATA*)&input,(DATA*)N,(DATA*)&output,buffor,1,NL);
	   input_table[i]=input;
	   output_table[i]=output;
   }
}
