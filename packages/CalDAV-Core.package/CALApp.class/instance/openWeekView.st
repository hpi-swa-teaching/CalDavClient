subwindows
openWeekView

	| builder |
	
	self clearView.
	builder := ToolBuilder default.
	builder 
		buildAll: {(self buildWeekPanel: builder)} 
		in: self topView.
	self changed: #isWeekViewNotActive

