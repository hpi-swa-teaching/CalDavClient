as yet unclassified
testButtonsExistence

	| button |
	
	button := self quickView buildAddButtonWith: ToolBuilder default.
	self assert: ((button label includesSubstring: '+') and: [button action = #openAddEventDialog]).
	
	button := self quickView buildAppButtonWith: ToolBuilder default.
	self assert: ((button label includesSubstring: 'App') and: [button action = #openApp]).
	
	button := self quickView buildDeadlinesViewButtonWith: ToolBuilder default.
	self assert: ((button label includesSubstring: 'DeadlinesView') and: [button action = #openDeadlinesView]).
	
	button := self quickView buildAddButtonWith: ToolBuilder default.
	self assert: ((button label includesSubstring: 'Refresh') and: [button action = #updateQuickView]).
	
