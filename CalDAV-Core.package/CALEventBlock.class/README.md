A CALEventBlock is a Model of a colored button block for an event in the weekPanel and DayView that when pressed shows EventDetails. 

Instance Variables 
	app:		aCALApp
	event: 	aCALEvent
	color: 	aColor 
	placed: 	aBool 
	frame: 	aRectangle 

app
	- the CALApp the EventBlock is shown in 

event 
	- the CALEvent belongign to the EventBlock 

color 
	- the Color of the EventBlock, set to the color of the CALCalendar the event belongs to   
	
placed 
	- initially false, indicates whether the EventBlock could be placed  
	
frame 
	- the frame of the EventBlock  