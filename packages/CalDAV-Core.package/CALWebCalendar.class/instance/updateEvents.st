accessing
updateEvents

	self remoteCalendar events do: [ :each | self addEvent: (CALEvent newFromICEvent: each) ]