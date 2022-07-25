testing
testFieldsWriteable

	| fields |
	
	fields := self editDialog buildFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = false]).
	fields := self addDialog buildFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = false]).
	fields := self showDialog buildFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = true]).