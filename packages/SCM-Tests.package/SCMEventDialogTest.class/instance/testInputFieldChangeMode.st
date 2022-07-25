testing
testInputFieldChangeMode

	| fields |
	
	fields := self addDialog buildFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false]).
	fields := self editDialog buildFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false]).
	fields := self showDialog buildFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false])