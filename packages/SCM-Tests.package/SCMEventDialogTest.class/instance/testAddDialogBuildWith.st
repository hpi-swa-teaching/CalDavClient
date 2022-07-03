testing
testAddDialogBuildWith
	
	self assert: (self addDialog = (self addDialog buildWith: ToolBuilder default) model)