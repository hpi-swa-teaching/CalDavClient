as yet unclassified
testFieldsWriteable

	| fields |
	
	fields := editDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = false]).
	fields := addDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = false])