accessing
= aSCMCalendar
	
	(aSCMCalendar class canUnderstand: #events) ifFalse: [^ false].
	^ ((self events = aSCMCalendar events) and: [self title = aSCMCalendar title])