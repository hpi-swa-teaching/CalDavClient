testing
testIconAllocationForImportCalendar

	| icon |
	
	icon := self app buildImportCalendarButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'caldav-format'
	