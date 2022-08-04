testing
testBuildWith
	
	self assert: self dialog
		equals: (self dialog buildWith: ToolBuilder default) model