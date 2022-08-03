comparing
= aSCMCalendar

	^ (aSCMCalendar isKindOf: SCMCalendar)
			ifFalse: [false]
			ifTrue: [self title = aSCMCalendar title
				and: [self id = aSCMCalendar id]]