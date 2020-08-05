as yet unclassified
handleDeleteAppointment: anEvent

eventsInWindow do:[:event|
	anEvent=event ifTrue:[
		eventsInWindow remove: event].].
dayList showEvents.