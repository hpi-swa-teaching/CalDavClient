testing
testPanelExistence

	| panel |
	
	panel := ((self deadlinesView buildPanelWith: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (panel model class = CALDeadlinesPanel).
	panel delete