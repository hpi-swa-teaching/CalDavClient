as yet unclassified
testViewSwitching

	"Disabled this test because it opens windows on branch switching, and fails under the new updateView"
	"app openWeekView.
	self assert: app isMonthViewActive equals: false.
	self assert: app isWeekViewActive equals: true.
	app openMonthView.
	self assert: app isMonthViewActive equals: true.
	self assert: app isWeekViewActive equals: false"