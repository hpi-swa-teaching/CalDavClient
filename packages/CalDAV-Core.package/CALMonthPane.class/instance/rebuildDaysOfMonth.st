toolbuilder
rebuildDaysOfMonth

	| builder panel |
	
	builder := ToolBuilder default.
	[panel := (self dependents select: [ :each | each externalName = 'monthPanel']) first] on: Error do: [^ self]. "abort rebuilding if model has no dependent morph"
	builder 
		buildAll: {(self buildDaysOfMonthWith: builder)} 
		in: panel