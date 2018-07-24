testing
testButtonsExistence

	| button |
	
	button := dayView buildPreviousDayButton: ToolBuilder default.
	self assert: ((button label includesSubstring: 'previous day') and: [button action = #previousDay]).
	
	button := dayView buildNextDayButton: ToolBuilder default.
	self assert: ((button label includesSubstring: 'next day') and: [button action = 	#nextDay])