A CALEventDialog is a Model that stands for a window displaying an event. It opens when we create a new CALEvent or edit an existing one. 

Instance Variables
	event:				aCALEvent
	parent: 			aCALApp
	titleColor: 			aColor 
	isFullDaySelected:	aBool 
	titleTextColor: 		aColor 

event 
	- the CALEvent edited with the CALEventDialog 

parent
	- the CALApp the CALEventDialog opens in   

titleColor 
	- the Color of the title field, turns red if the title is invalid (e.g. when we didn't enter a title)

isFullDaySelected
	- a Bool switching when we press the button to activate or deactive the full day option for the event 

titleTextColor
	- the Color of the text in the title field 