initialization
initialize

	super initialize.
	SmalltalkImage current addToStartUpList: self class.
	self synchronizeCalendars.
	self calendars isEmpty
		ifTrue: [self addDefaultCalendars]