subwindows
openMonthView

	| builder |
	
	self clearView.
	builder := ToolBuilder default.
	builder 
		buildAll: {(self buildMonthPanel: builder)} 
		in: self topView.
	self changed: #isMonthViewActive



