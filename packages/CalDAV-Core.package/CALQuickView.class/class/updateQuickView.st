initialize-release
updateQuickView

	| builder |
	
	"(self events) delete."
	builder := ToolBuilder default.	
	builder buildAll: {(self buildEventListWith: builder)} in: self topView.