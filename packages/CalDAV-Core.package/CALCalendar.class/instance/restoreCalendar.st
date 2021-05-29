persistence
restoreCalendar

	| file dataCollection eventCollection colorCollection |
	
	(self class calendarDirectory fileExists: self name) ifFalse: [^ self].
	file := FileStream readOnlyFileNamed: (self class calendarDirectory fullNameFor: self name).
	dataCollection := STON fromString: file contents.
	file close.
	colorCollection := dataCollection select: [:each | each class == Color].
	colorCollection do: [:each | self color: each]. 
	eventCollection := dataCollection select: [:each | each class == OrderedCollection].
	eventCollection do: [:each | 
		each do: [:event | self addEvent: event]]
	