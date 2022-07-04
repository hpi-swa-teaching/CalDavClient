accessing
= aSCMCalender

	^ (aSCMCalender isKindOf: SCMCalendar) ifFalse: [false]
	ifTrue: [self title = aSCMCalender title 
				and: [self events = aSCMCalender events
				and: [self id = aSCMCalender id]]]