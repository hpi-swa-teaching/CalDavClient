testing
testIconAllocationForDeadlinesView

	| icon |
	
	icon := self app buildDeadlinesViewButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'hourglass'
	