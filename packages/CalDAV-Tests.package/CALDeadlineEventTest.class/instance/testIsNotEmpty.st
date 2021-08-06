testing
testIsNotEmpty

	self assert: ((self deadlinesEventPanel perform: (self deadlinesEventPanel buildSpec: ToolBuilder default) children first list)
			anySatisfy: [:each | '*Week*' match: each asString])