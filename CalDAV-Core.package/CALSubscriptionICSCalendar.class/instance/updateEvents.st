accessing
updateEvents

	self clearEvents.
	self remoteCalendar events do: [:each | self addEvent: (CALEvent newFromICEvent: each)]