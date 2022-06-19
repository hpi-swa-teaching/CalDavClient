running
setUp

	| aMorph | 
	self app: (CALApp new
		prepareCalendarsForTesting;
		selectionFileName: 'testSelection';
		restoreCalendarSelection;
		addCalendar: (CALCalendar withName: 'testCalendar');
		yourself).
	self app calendarIndex: self app calendars size.
	aMorph := Morph new openInWorld.
	self world: aMorph world.
	aMorph delete