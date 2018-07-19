testing
testMonthViewIsStandard

	| spec |
	
	spec := self app buildWith: ToolBuilder default.
	self assert: self app topView isNil not description: 'app should have topView after building'.
	self assert: self app isMonthViewActive description: 'month view should be active by default'