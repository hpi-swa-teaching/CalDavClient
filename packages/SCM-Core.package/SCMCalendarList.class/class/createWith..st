initialization
createWith: aSCMCalendarRepository

	| calendarList |
	
	calendarList := self new
		calendarRepository: aSCMCalendarRepository;
		yourself.
	aSCMCalendarRepository addDependent: calendarList.
	
	^ calendarList