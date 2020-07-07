as yet unclassified
setUp

	self calendar: (NDDateFormatter new).
	self calendar updateOrCreateEventsFrom: NDCalDavCalendar.
	