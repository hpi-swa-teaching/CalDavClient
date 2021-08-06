testing
testIconAllocationForApp

	| icon |
	
	icon := self quickView buildAppButtonWith: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'calendar'