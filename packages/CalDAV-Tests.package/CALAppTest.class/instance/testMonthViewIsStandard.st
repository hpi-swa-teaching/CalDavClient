as yet unclassified
testMonthViewIsStandard

	| spec |
	
	spec := app buildWith: ToolBuilder default.
	self assert: app topView isNil not.
	self assert: app isMonthViewActive