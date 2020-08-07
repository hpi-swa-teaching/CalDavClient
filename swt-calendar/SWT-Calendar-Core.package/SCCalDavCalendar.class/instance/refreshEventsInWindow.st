updating
refreshEventsInWindow

	self eventsInWindow: OrderedCollection new. 
	self eventsDictionary do: [:event|
		event serverData start > DateAndTime today
			ifTrue:[
				event serverData start <= (DateAndTime today + dayList numberOfDaysInDayList days)
					ifTrue:[
						eventsInWindow add: event
					].].].