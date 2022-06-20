save and load
loadFromDisk: aSCMCalendar

	| file eventCollection |
	
	aSCMCalendar calendarFileExists ifFalse: [^ aSCMCalendar].
	file := FileStream readOnlyFileNamed: aSCMCalendar fullName.
	eventCollection := STON fromString: file contents.
	file close.
	eventCollection do: [:each | aSCMCalendar addEvent: each]