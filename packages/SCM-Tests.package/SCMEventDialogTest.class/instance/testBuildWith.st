testing
testBuildWith
	
	self assert: (SCMEventDialog selectors 
		anySatisfy: [:each | each = 'buildWith:'])