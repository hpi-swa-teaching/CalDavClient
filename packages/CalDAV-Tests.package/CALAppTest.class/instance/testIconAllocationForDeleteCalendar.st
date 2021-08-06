testing
testIconAllocationForDeleteCalendar

	| icon |
	
	icon := self app buildDeleteCalendarButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'minus'
	