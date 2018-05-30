as yet unclassified
testAddEventButton

	| button |
	
	button := app buildAddEventButton: ToolBuilder default.
	self assert: button label = 'Add Event'.
	self assert: button action = #openAddEventDialog