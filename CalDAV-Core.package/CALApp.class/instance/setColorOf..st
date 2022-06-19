subwindows
setColorOf: aCalendarName

	| colorName colorNameIndex |
	
	colorNameIndex := UIManager default chooseFrom: self calendarColors title: 'Choose a color'.  
	colorNameIndex = 0 ifFalse: [
		colorName := self calendarColors at: colorNameIndex.  
		colorName ifNotEmpty: [self change: aCalendarName color: colorName]]