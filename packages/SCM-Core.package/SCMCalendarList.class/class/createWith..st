as yet unclassified
createWith: aSCMCalendarRepository

	| s |
	s := self new
		calendarRepository: aSCMCalendarRepository;
		yourself.
	aSCMCalendarRepository addDependent: s.
	^ s