accessing
nextDay

	| builder |
	
	self day: (self day addDays: 1).
	builder := ToolBuilder default.
	builder buildAll: (self buildEventBlocks: builder) in: self window.
	self changed: #dayText