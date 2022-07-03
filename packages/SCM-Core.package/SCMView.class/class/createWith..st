as yet unclassified
createWith: aSCMCalendarRepository

	| view |
	view := self new
			calendarRepository: aSCMCalendarRepository;
			load: self defaultView;
			yourself.
	aSCMCalendarRepository addDependent: view.
	
	^ view 