testing
testCalendarColorCorrectlyStoredAndRestored 
	
	| file calendarDirectory delimiter dataCollection colorCollection openedCALApp |
	openedCALApp := CALApp open.
	self app change: 'testCalendar' color: 'yellow'.
	self app addEvent: 'Test1'. 
	openedCALApp delete. 
	openedCALApp := CALApp open. 
	openedCALApp delete. 
	openedCALApp := CALApp open. 
	delimiter := FileDirectory pathNameDelimiter.
	calendarDirectory := (FileDirectory default directoryNamed: 'CalDAV', delimiter, 'calendars', delimiter) assureExistence.
	file := FileStream readOnlyFileNamed: (calendarDirectory fullNameFor: 'testCalendar').
	dataCollection := STON fromString: file contents.
	file close.
	colorCollection := dataCollection select: [:each | each class == Color].
	colorCollection isEmpty 
		ifFalse: [self assert: colorCollection first 
					equals: Color yellow 
					description: 'changed color should be the same as the color stored in the calendar file after closing the calendar and opening it again'.] 
		ifTrue: [self assert: Color orange 
					equals: Color yellow 
					description: 'changed color should not be stored as nil in the calendar file after closing the calendar and opening it again'].
	openedCALApp delete