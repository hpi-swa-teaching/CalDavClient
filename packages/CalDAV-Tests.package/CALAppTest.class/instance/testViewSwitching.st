as yet unclassified
testViewSwitching

	| spec |
	
	spec := app buildWith: ToolBuilder default.
	app openWeekView.
	self assert: false equals: app isMonthViewActive.
	self assert: true equals: app isWeekViewActive.
	app openMonthView.
	self assert: false equals: app isWeekViewActive