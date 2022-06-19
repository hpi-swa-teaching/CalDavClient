persistence
restoreCalendar

	| eventCollection colorCollection |
	
	(self class calendarDirectory fileExists: self name) ifFalse: [^ self].
	colorCollection := self dataCollection select: [:each | each class == Color].
	colorCollection do: [:each | self color: each]. 
	eventCollection := self dataCollection select: [:each | each class == OrderedCollection].
	self halt.
	eventCollection do: [:each | 
		each do: [:event | self addEvent: event]]