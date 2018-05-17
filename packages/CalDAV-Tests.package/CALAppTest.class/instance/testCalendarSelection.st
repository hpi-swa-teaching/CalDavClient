as yet unclassified
testCalendarSelection

	testApp currentIndex: 1.
	self assert: testApp currentlySelectedEvent title = 'first'
	
	