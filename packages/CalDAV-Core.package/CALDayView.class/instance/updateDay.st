accessing
updateDay

	| builder |
	
	(self topView submorphNamed: 'dayGrid') delete.
	builder := ToolBuilder default.	
	builder buildAll: {(self buildEventPanelWith: builder)} in: self topView.
	self changed: #dayText