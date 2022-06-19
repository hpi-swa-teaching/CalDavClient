accessing
updateDay

	| builder |
	
	(self topView submorphNamed: 'eventGrid') delete.
	builder := ToolBuilder default.	
	builder 
		buildAll: {self buildEventPanelWith: builder} 
		in: self topView.
	self changed: #dayText