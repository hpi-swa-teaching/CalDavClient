as yet unclassified
testViewShowPreviousPage

	| startDate |
	
	self subject load: #agenda.
	startDate := self subject selectedDate.
	self subject showPreviousPage.
	self assert: startDate previous equals: self subject selectedDate.
	
	self subject submorphs first submorphs second submorphs first submorphsDo: [:each  |
		each date = DateAndTime yesterday asDate
			ifTrue: [self assert: each submorphs second submorphs first event equals: self yesterdayEvent]]