as yet unclassified
testViewShowNextPage

	| startDate eventDate |
	
	self subject load: #agenda.
	startDate := self subject startDate.
	self subject showNextPage.
	self assert: startDate next equals: self subject startDate.
	
	
	eventDate := self subject calendarManager calendars first events first begin asDate.
	self subject submorphs first submorphsDo: [:each  |
		each date = eventDate
			ifTrue: [self assert: each submorphs second submorphs first class equals: SCMEventMorph]
			ifFalse: [self assert: each submorphs second submorphs size equals: 0]
		]