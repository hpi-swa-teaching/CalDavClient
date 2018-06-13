accessing
previousDay

	| builder |
	
	self flag: #metaProgramming.
	
	self day: (self day subtractDays: 1).
	self topView submorphs first delete.
	builder := ToolBuilder default.	
	builder buildAll: {(self buildEventPanelWith: builder)} in: self topView.
	self changed: #dayText