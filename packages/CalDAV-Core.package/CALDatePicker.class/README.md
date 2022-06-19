A DataPicker is a Morph that is used to change the data of an event when creating it. It is transferred from Squeak-EToys-CalendarMorph. 

Instance Variables
	date:					aDate
	shouldUpdate:			aBool
	stepTime: 				aNumber

date
	- represents the current date 
	
shouldUpdate
	- indicates whether changes have been made (e.g. a new date was entered)

stepTime
	- the time between steps with a value between 20 (minimumStepTime) and 200 (maximumStepTime), is increased whenever there's nothing to update, set to 20 after an update 