testing
testHas53Panels

	self assert: ((self deadlinesPanel buildSpec: ToolBuilder default) children size = 53)