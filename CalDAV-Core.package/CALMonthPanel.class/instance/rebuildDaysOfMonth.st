toolbuilder
rebuildDaysOfMonth

	| builder panel |
	
	builder := ToolBuilder default.
	[panel := (self dependents select: [:each | each externalName = 'monthPanel']) first]
		on: Error
		do: [^ self].
	builder 
		buildAll: {(self buildDaysOfMonthWith: builder)} 
		in: panel