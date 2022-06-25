accessing
load

	| file eventCollection |
	
	self calendarFileExists ifFalse: [^ self].
	file := FileStream readOnlyFileNamed: self fullTitle.
	eventCollection := STON fromString: file contents.
	file close.
	eventCollection do: [:each | self addEvent: each]