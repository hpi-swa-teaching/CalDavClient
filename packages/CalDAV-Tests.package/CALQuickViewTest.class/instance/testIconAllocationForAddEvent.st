testing
testIconAllocationForAddEvent

	| icon |
	
	icon := self quickView buildAddEventButtonWith: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'add'