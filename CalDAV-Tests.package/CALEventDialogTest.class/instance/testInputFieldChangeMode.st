testing
testInputFieldChangeMode

	| fields |
	
	fields := self eventDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false]).
	fields := self addDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false]).
	fields := self editDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false])