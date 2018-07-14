persistence
restoreEvents

	| file eventCollection |
	
	(self class calendarDirectory fileExists: self name) ifFalse: [^ self].
	file := FileStream readOnlyFileNamed: (self class calendarDirectory fullNameFor: self name).
	eventCollection := STON fromString: file contents.
	file close.
	eventCollection do: [:each | self addEvent: each]