toolbuilder
rebuildWeekGrid

	| builder |
	
	builder := ToolBuilder default.	
	builder 
		buildAll: {(self buildWeekGridWith: builder)} 
		in: (self dependents 
			detect: [:each | each externalName = 'weekPanel'] 
			ifNone: [self error: 'No weekPanel found in dependents'])