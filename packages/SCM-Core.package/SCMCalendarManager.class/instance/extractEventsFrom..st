as yet unclassified
extractEventsFrom: aFileName

	| file eventCollection |
	
	(SCMCalendar calendarDirectory fileExists: aFileName) ifFalse: [self error: FileDoesNotExist.].
	file := FileStream readOnlyFileNamed: (SCMCalendar calendarDirectory fullNameFor: aFileName).
	eventCollection := STON fromString: file contents.
	file close.
	^ eventCollection