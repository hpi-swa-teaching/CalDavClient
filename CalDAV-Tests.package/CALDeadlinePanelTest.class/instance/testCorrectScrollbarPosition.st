testing
testCorrectScrollbarPosition

	self assert: ((((self deadlinesPanel buildSpec: ToolBuilder default) children at: (CALDeadlinesWindow weekOfYear)) 
		buildWith: ToolBuilder default) isFullOnScreen)