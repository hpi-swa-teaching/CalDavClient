as yet unclassified
testCalendarSelection
	|testApp|
	testApp := self setUp.
	testApp currentIndex: 1.
	self assert: testApp currentlySelectedEvent title = 'first'
	
	