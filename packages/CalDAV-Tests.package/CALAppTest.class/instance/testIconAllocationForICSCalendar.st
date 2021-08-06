testing
testIconAllocationForICSCalendar

	| icon |
	
	icon := self app buildICSCalendarButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'ics-format'
	