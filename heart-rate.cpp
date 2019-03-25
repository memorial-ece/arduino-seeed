////INCLUDE STATEMENTS
// Including the header files for libraries with the functions we need for this library
#include "heart-rate.h"

//Heart-rate monitor functions and variables
int sampleSize;
unsigned long hrIntervals[100];
int hrSamples;
unsigned long hrLastBeat;
bool hrIntervalsReady=false;
bool hrReset=false;


/**
Initialises HR monitor so it can be used - call in initProject()
*/
void hrInit(int inputPort, int sampleCount)
{
	hrSamples = sampleCount;
	attachInterrupt(digitalPinToInterrupt (inputPort), interrupt, RISING);//set interrupt 0,digital port 2
	for(int i=0;i < hrSamples;i ++)
    {
        hrIntervals[i]=0;
    }
	hrLastBeat = millis();
}

/**
If enough heart rate samples available, populates array passed in with intervals between heartbeats
*/
bool hrGetIntervals(unsigned long intervals[])
{
	for (int i = 0; i < hrSamples; i++)
		intervals[i] = hrIntervals[i];
	
	return hrIntervalsReady;
}


/*Function: Interrupt service routine.Get the sigal from the external interrupt*/
void interrupt()
{
	unsigned long interval = millis()- hrLastBeat;
	
	if(interval > HR_RESET_TIME)//set 2 seconds as max heart pluse duty
	{
		hrReset=true;//need to reset
		hrIntervalsReady = false;
		hrSampleCount=0;
		for(int i=0;i < hrSamples;i ++)
		{
			hrIntervals[i]=0;
		}
	}
	else if (hrSampleCount < hrSamples) //Need more samples
	{
	  hrReset=false;
	  hrIntervalsReady=false;
	  hrIntervals[hrSampleCount] = interval;
	  hrSampleCount++;
	}
	else //Have required samples, need to shift samples in array
	{
		hrIntervalsReady = false;
		for(unsigned char i=1;i < hrSamples;i ++)
		{
			hrIntervals[i-1]=hrIntervals[i];
		}
		hrIntervals[hrSamples-1] = interval;
		hrIntervalsReady = true;
	}
}
