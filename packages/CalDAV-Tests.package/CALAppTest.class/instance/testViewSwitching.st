testing
testViewSwitching

	| spec |
	
	spec := self app buildWith: ToolBuilder default.
	self app openWeekView.
	self assert: false equals: self app isMonthViewActive.
	self assert: true equals: self app isWeekViewActive.
	self app openMonthView.
	self assert: false equals: self app isWeekViewActive