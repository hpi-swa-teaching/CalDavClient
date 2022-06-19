testing
testEventEditOnDoubleClick

	| list |
	
	list := self app buildEventList: ToolBuilder default.
	self assert: list doubleClick = #openEventDetails description: 'a double click in event list should open the edit dialog'