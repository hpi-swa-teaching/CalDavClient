A CALApp is a Model which represents the main calendar application in which users can access different CALCalendars. 

Instance Variables 
	calendars			aSortedCollection 
	calendarIndex		aNumber  
	monthPanel		aCALMonthPanel
	week Panel			aCALWeekPanel
	calendarsToShow	aSet 
	selectionFileName	aString 

calendars 
	- a sortedCollection of CALCalendars 
	
calendarIndex 
	- the index of a certain calendar, e.g., a calendar selected to be deleted
	
monthPanel
	- the CALMonthPanel shown in the CALApp 
	
weekPanel
	- the CALWeekPanel shown in the CALApp 

calendarsToShow
	- the calendars whose events will be shown 	

selectionFileName
	- the name of the selected (calendar) file from the FileDirectory 