as yet unclassified
testButtonPresence

	| button |
	
	button := app buildAddEventButton: ToolBuilder default.
	self assert: button label = 'Add Event'.
	self assert: button action = #openAddEventDialog.
	button := app buildDeleteCalendarButton: ToolBuilder default.
	self assert: button label = 'Delete Calendar'.
	self assert: button action = #deleteCalendar.
	button := app buildImportCalendarButton: ToolBuilder default.
	self assert: (button label includesSubstring: 'Import').
	self assert: button action = #importCalendar