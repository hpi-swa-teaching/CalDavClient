as yet unclassified
testViewShowNextPage

	| startDate |
	
	self subject load: #agenda.
	startDate := self subject startDate.
	self subject showNextPage.
	self assert: startDate next equals: self subject startDate.
	
	self subject submorphs first submorphsDo: [:each  |
		each date = DateAndTime tomorrow asDate next
			ifTrue: [self assert: each submorphs second submorphs first event equals: self dayAfterTomorrowEvent]]