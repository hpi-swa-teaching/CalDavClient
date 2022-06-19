subwindows
openMonthView

	| builder |
	
	self clear.
	builder := ToolBuilder default.
	builder 
		buildAll: {(self buildMonthPanel: builder)} 
		in: self topView.
	self changed: #isMonthViewNotActive



