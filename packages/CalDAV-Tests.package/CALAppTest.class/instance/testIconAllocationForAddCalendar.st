testing
testIconAllocationForAddCalendar

	| icon |
	
	icon := self app buildAddCalendarButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'add'
	