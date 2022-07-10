comparing
= aSCMCalendar

	^ (aSCMCalendar isKindOf: SCMCalendar)
		ifFalse: [false]
		ifTrue: [self title = aSCMCalendar title 
			and: [self events = aSCMCalendar events
			and: [self id = aSCMCalendar id
			and: [self color = aSCMCalendar color]]]]