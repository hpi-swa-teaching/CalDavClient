testing
testFieldsWriteable

	| fields |
	
	fields := self editDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = false]).
	fields := self addDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = false])