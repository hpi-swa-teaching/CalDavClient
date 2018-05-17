as yet unclassified
testInputFieldChangeMode

	| fields |
	
	fields := eventDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false]).
	fields := addDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false]).
	fields := editDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false])