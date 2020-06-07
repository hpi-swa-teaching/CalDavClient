errors
= aCalendar
	
	(aCalendar class canUnderstand: #events) ifFalse: [^ false].
	^ ((self events = aCalendar events) and: (self name = aCalendar name))