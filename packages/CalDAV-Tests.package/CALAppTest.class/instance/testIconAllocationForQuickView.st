testing
testIconAllocationForQuickView

	| icon |
	
	icon := self app buildQuickViewButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'list'
	