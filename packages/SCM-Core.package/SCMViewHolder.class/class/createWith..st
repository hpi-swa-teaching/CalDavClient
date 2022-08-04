initialization
createWith: aSCMCalendarRepository

	| view |
	
	view := self new
			calendarRepository: aSCMCalendarRepository;
			configureLayout;
			basicCurrentView: self defaultView;
			basicSelectedDate: self today;
			reload;
			yourself.
	aSCMCalendarRepository addDependent: view.
	
	^ view