testing
testBuildWith

	| spec |
	
	spec := self deadlinesView buildWith: (ToolBuilder default).
	self assert: (spec model = self deadlinesView) description: 'Expected CALDeadlinesWindow as model of spec'