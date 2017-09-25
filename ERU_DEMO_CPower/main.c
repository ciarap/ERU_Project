/*
 * main.c
 *
 *  Created on: 2017 Apr 05 09:35:36
 *  Author: ciara
 */




#include <DAVE.h>                 //Declarations from DAVE Code Generation (includes SFR declaration)

/**

 * @brief main() - Application entry point
 *
 * <b>Details of function</b><br>
 * This routine is the application entry point. It is invoked by the device startup code. It is responsible for
 * invoking the APP initialization dispatcher routine - DAVE_Init() and hosting the place-holder for user application
 * code.
 */

int32_t buttonA;
int32_t buttonB;

	void InterruptHandler_AandBPressed(void){
		DIGITAL_IO_ToggleOutput(&LED);    // when event occurs LED toggles off or  on
	}
	
int main(void)
{
  DAVE_STATUS_t status;

  status = DAVE_Init();           /* Initialization of DAVE APPs  */

  if(status != DAVE_STATUS_SUCCESS)
  {
    /* Placeholder for error handler code. The while loop below can be replaced with an user error handler. */
    XMC_DEBUG("DAVE APPs initialization failed\n");

    while(1U)
    {

    }
  }

  /* Placeholder for user application code. The while loop below can be replaced with user application code. */
	

  while(1U)
  {
	  /*     If being used with Probe buttons, this sets the digital pins to high for when buttons pressed, low otherwise
	   *     However, ERU event detector won't let the signals be digital input/output apps,
	   *     so I can't set them to high and use the Probe buttons , must be digital input apps and hardware buttons possibly
     if(buttonA==1){
			 DIGITAL_IO_SetOutputHigh(&BUTTON_A);
  }
		 if(buttonB==1){
			 DIGITAL_IO_SetOutputHigh(&BUTTON_B);
    }
		  if(buttonA==0){
			 DIGITAL_IO_SetOutputLow(&BUTTON_A);
  }
			if(buttonB==0){
			 DIGITAL_IO_SetOutputLow(&BUTTON_B);
  }
  */
}
	}
