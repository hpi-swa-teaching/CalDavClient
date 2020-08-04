as yet unclassified
handleNewAppointment: anEvent

anEvent serverData start > (DateAndTime today) ifTrue:[
		anEvent serverData start <= ((DateAndTime today)+ 10 days) ifTrue:[
			eventsInWindow add: anEvent].]