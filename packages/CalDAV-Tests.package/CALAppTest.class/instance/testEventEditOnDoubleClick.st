as yet unclassified
testEventEditOnDoubleClick

	| list |
	
	list := testApp buildEventList: ToolBuilder default.
	self assert: list doubleClick = #openViewEventDialog