testing
testIconAllocationForApp

	| icon |
	
	icon := self deadlinesView buildAppButtonWith: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'calendar'