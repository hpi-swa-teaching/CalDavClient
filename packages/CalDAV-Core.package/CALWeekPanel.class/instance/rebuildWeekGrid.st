as yet unclassified
rebuildWeekGrid

	| builder |
	
	builder := ToolBuilder default.	
	builder 
		buildAll: {(self buildWeekGridWith: builder)} 
		in: ((self dependents select: [ :each | each externalName = 'weekPanel']) first)