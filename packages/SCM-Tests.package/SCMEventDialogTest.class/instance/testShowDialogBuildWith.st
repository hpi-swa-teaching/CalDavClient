testing
testShowDialogBuildWith
	
	self assert: self showDialog = (self showDialog buildWith: ToolBuilder default) model