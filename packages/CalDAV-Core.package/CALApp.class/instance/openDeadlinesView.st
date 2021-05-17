subwindows
openDeadlinesView

	| builder |
	
	self clearView.
	builder := ToolBuilder default.
	builder 
		buildAll: {(self buildDeadlinesPanel: builder)} 
		in: self topView.
	self changed: #isDeadlinesViewNotActive



