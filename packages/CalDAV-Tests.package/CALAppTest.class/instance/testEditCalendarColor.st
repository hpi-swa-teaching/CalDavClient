testing
testEditCalendarColor 
	
	| file calendarDirectory delimiter dataCollection colorCollection |
	
	self app change: 'testCalendar' color: 'yellow'.
	delimiter := FileDirectory pathNameDelimiter.
	calendarDirectory := (FileDirectory default directoryNamed: 'CalDAV', delimiter, 'calendars', delimiter) assureExistence.
	file := FileStream readOnlyFileNamed: (calendarDirectory fullNameFor: 'testCalendar').
	dataCollection := STON fromString: file contents.
	file close.
	colorCollection := dataCollection select: [:each | each class == Color].
	self 
		assert: colorCollection first 
		equals: Color yellow 
		description: 'changed color should be same as the color stored in the calendar file'