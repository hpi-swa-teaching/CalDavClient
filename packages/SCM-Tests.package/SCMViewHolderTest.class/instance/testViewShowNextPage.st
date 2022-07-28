as yet unclassified
testViewShowNextPage

	self subject showNextPage.
	
	self subject firstSubmorph scroller firstSubmorph submorphsDo: [:each  |
		each date = DateAndTime tomorrow asDate next
			ifTrue: [self assert: each submorphs second submorphs first event equals: self tomorrowEvent]]