initialization
loadNamed: aString 

	| file loadedCalendar |
	
	(self calendarDirectory fileExists: aString) ifFalse: [^ FileDoesNotExist signalWith: aString].
	file := FileStream readOnlyFileNamed: (self calendarDirectory fullNameFor: aString).
	loadedCalendar := STON fromString: file contents.
	file close.
	self setUpEventsFor: loadedCalendar.
	
	^ loadedCalendar