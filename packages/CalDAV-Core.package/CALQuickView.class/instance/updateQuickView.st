accessing
updateQuickView

	| builder |
	
	(self dependents at: 2) abandon.
	builder := ToolBuilder default.
	builder buildAll: {(self buildEventListWith: builder)} in: self topView