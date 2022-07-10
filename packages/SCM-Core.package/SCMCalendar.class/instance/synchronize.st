actions
synchronize

	| file loadedCalendar |
	
	self calendarFileExists ifFalse: [^ self].
	file := FileStream readOnlyFileNamed: self fullTitle.
	loadedCalendar := STON fromString: file contents.
	file close.
	
	self title: loadedCalendar title.
	self isActive: loadedCalendar isActive.
	self events: loadedCalendar events.
	self id: loadedCalendar id.
	
	self events do: [:event | event calendar: self]