as yet unclassified
testViewSwitching

	app openWeekView.
	self assert: app isMonthViewActive equals: false.
	self assert: app isWeekViewActive equals: true.
	app openMonthView.
	self assert: app isWeekViewActive equals: false