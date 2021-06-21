subwindows
openCalendarColorEditor
	
	| calendarName calendarNameIndex |
	calendarNameIndex := UIManager default 
		chooseFrom: self calendarNames title: 'Choose a calendar'.  
	
	calendarNameIndex = 0 ifFalse: [ 
		calendarName := self calendarNames at: calendarNameIndex. 
		calendarName isEmpty not 
			ifTrue: [self setColorOf: calendarName]]