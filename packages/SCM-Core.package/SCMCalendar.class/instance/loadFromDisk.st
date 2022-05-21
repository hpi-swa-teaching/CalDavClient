accessing
loadFromDisk

	| file eventCollection |
	
	self calendarFileExists ifFalse: [^ self].
	file := FileStream readOnlyFileNamed: self fullName.
	eventCollection := STON fromString: file contents.
	file close.
	eventCollection do: [:each | self addEvent: each].