accessing
updateDay

	| builder |
	
	self flag: #metaProgramming.
	
	self topView submorphs first delete.
	builder := ToolBuilder default.	
	builder buildAll: {(self buildEventPanelWith: builder)} in: self topView.
	self changed: #dayText