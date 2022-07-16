as yet unclassified
loadNamed: aString 

	| file loadedCalendar |
	
	(self calendarDirectory fileExists: aString) ifFalse: [^ FileDoesNotExist signalWith: aString].
	file := FileStream readOnlyFileNamed: (self calendarDirectory fullNameFor: aString).
	loadedCalendar := STON fromString: file contents.
	file close.
	
	loadedCalendar events do: [:event | event calendar: loadedCalendar].
	loadedCalendar events: loadedCalendar events asSortedCollection.
	^ loadedCalendar