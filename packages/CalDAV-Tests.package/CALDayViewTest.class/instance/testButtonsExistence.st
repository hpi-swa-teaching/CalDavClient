testing
testButtonsExistence

	| button |
	
	button := self dayView buildPreviousDayButton: ToolBuilder default.
	self assert: ((button label includesSubstring: 'previous day') and: [button action = #previousDay]).
	
	button := self dayView buildNextDayButton: ToolBuilder default.
	self assert: ((button label includesSubstring: 'next day') and: [button action = 	#nextDay])