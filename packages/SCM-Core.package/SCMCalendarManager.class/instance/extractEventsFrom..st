as yet unclassified
extractEventsFrom: aFileName

	| file eventCollection |
	
	(SCMCalendar calendarDirectory fileExists: aFileName) ifFalse: [self halt. "todo: add real error"].
	file := FileStream readOnlyFileNamed: (SCMCalendar calendarDirectory fullNameFor: aFileName).
	eventCollection := STON fromString: file contents.
	file close.
	^ eventCollection