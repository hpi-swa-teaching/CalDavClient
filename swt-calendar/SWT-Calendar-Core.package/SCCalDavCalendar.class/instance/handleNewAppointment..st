as yet unclassified
handleNewAppointment: anEvent

anEvent serverData start > (DateAndTime today) ifTrue:[
		anEvent serverData start <= ((DateAndTime today)+ dayList numberOfDaysInDayList days) ifTrue:[
			eventsInWindow add: anEvent].].
	dayList showEvents.