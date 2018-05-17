as yet unclassified
testAddEventButton

	| button |
	
	button := testApp buildAddEventButton: ToolBuilder default.
	self assert: button label = 'Add Event'.
	self assert: button action = #openAddEventDialog