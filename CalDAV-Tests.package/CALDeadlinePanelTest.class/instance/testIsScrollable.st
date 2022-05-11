testing
testIsScrollable

	self assert: (((self deadlinesPanel buildSpec: ToolBuilder default) buildWith: ToolBuilder default) vIsScrollable)