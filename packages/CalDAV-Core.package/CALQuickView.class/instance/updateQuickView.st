accessing
updateQuickView

	| builder |
	
	self abandonEventList. 
	builder := ToolBuilder default.
	builder buildAll: {(self buildEventListWith: builder)} in: self topView