testing
testFieldsWriteable

	| fields |
	
	fields := self eventDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = false]).
	fields := self editDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = false]).
	fields := self addDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = false]).
	fields := self showDialog buildStandardFields: ToolBuilder default.
	self assert: (fields allSatisfy: [:each | each readOnly = true]).