testing
testIconAllocationForRefresh

	| icon |
	
	icon := self app buildRefreshButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'refresh'
	