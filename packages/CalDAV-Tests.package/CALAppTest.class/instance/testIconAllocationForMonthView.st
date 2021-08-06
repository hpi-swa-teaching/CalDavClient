testing
testIconAllocationForMonthView

	| icon |
	
	icon := self app buildMonthViewButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'm'
	