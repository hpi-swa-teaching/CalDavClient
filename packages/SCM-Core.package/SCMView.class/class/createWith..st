as yet unclassified
createWith: aSCMCalendarRepository

	| a |
	a := self new
			calendarRepository: aSCMCalendarRepository;
			load: self defaultView;
			yourself.
	aSCMCalendarRepository addDependent: a.
	
	^ a 