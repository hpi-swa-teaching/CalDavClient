testing
testIconAllocationForWeekView

	| icon |
	
	icon := self app buildWeekViewButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'w'
	