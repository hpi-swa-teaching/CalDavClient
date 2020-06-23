as yet unclassified
updateOrCreateEventsFrom: iCalData

	iCalData do: [ :elem |
		| url etag event iCalendar uid calEvents firstElem|
		iCalendar := elem at: #calendarData.
		calEvents := iCalendar events.
		firstElem := calEvents first.
		uid := firstElem uid.
		url := self buildUrlFrom: uid.
		etag := elem at: #'getetag'.
		 
		event := self eventsDictionary at: (elem at: #urlLocalPart ) ifAbsent: [
			CalDavEvent newIn: self withUrl: url.].
		event etag: etag.
		event serverCalendar: iCalendar.
		event serverData: iCalendar events first.
		event setClean.
		self addEvent: event.
		]