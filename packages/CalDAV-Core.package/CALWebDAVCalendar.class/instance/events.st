accessing
events

	self localCalendarCopy collect: [ :each | CALEvent newFromICEvent: each serverData ]