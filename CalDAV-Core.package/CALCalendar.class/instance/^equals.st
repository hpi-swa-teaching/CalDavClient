errors
= aCALCalendar
	
	(aCALCalendar class canUnderstand: #events) ifFalse: [^ false].
	^ ((self events = aCALCalendar events) and: [self name = aCALCalendar name])