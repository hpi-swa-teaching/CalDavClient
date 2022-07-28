as yet unclassified
createWith: aSCMCalendarRepository

	| view |
	
	view := self new
			calendarRepository: aSCMCalendarRepository;
			configureLayout;
			currentView: self defaultView;
			selectedDate: self today;
			yourself.
	aSCMCalendarRepository addDependent: view.
	
	^ view