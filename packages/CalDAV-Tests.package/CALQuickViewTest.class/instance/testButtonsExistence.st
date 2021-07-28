as yet unclassified
testButtonsExistence

	| button |
	
	button := ((self quickView buildAddEventButtonWith: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'add') and: [button actionSelector = #openAddEventDialog]).
	
	button := ((self quickView buildAppButtonWith: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'calendar') and: [button actionSelector = #openApp]).
	
	button := ((self quickView buildDeadlinesViewButtonWith: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'hourglass') and: [button actionSelector = #openDeadlinesView]).
	
	button := ((self quickView buildRefreshButtonWith: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'refresh') and: [button actionSelector = #updateQuickView])