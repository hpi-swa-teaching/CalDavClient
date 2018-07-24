testing
testBuildingOfWeekPanelInExternalWeekView

	| panel |
	
	panel := weekView buildWeekPanelWith: ToolBuilder default.
	self assert: panel name = 'weekPanel'.
	self assert: panel children size = 5.
	