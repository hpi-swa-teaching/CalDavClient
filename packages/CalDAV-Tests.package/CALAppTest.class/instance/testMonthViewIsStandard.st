as yet unclassified
testMonthViewIsStandard

	| spec |
	
	spec := app buildWith: ToolBuilder default.
	self assert: app topView isNil not description: 'app should have topView after building'.
	self assert: app isMonthViewActive description: 'month view should be active by default'