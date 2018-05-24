as yet unclassified
testEventEditOnDoubleClick

	| list |
	
	list := app buildEventList: ToolBuilder default.
	self assert: list doubleClick = #openEditEventDialog