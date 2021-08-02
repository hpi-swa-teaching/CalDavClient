subwindows
openCalendarColorEditor
	
	| calendarName calendarNameIndex |
	
	calendarNameIndex := UIManager default 
		chooseFrom: self calendarNames 
		title: 'Choose a calendar'.  
	calendarNameIndex = 0 ifFalse: [ 
		calendarName := self calendarNames at: calendarNameIndex. 
		calendarName ifNotEmpty: [self setColorOf: calendarName]]