events handling
handleNewAppointment: anEvent

	eventsInWindow ifNil: [self eventsInWindow: OrderedCollection new].
	anEvent serverData start > DateAndTime today
		ifTrue:[
			anEvent serverData start <= (DateAndTime today + dayList numberOfDaysInDayList days) ifTrue:[
				eventsInWindow add: anEvent].].
		dayList showEvents.