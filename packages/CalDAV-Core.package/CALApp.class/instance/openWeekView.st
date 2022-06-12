subwindows
openWeekView

	| builder |
	
	self clear.
	builder := ToolBuilder default.
	builder 
		buildAll: {(self buildWeekPanel: builder)} 
		in: self topView.
	self changed: #isWeekViewNotActive

