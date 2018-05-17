as yet unclassified
testInputFieldChangeMode

	| fields |
	
	fields := eventDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each indicateUnacceptedChanges = false])