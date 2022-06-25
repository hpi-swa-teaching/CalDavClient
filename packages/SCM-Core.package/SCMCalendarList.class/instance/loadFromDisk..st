save and load
loadFromDisk: aSCMCalendar

	| file eventCollection |
	
	aSCMCalendar calendarFileExists ifFalse: [^ aSCMCalendar].
	file := FileStream readOnlyFileNamed: aSCMCalendar fullTitle.
	eventCollection := STON fromString: file contents.
	file close.
	eventCollection do: [:each | aSCMCalendar addEvent: each]