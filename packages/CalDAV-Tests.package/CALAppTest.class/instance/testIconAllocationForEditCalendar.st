testing
testIconAllocationForEditCalendar

	| icon |
	
	icon := self app buildEditCalendarButton: ToolBuilder default.
    	self assert: ((icon label runs values at: 1) at: 1) anchoredMorph name = 'color-palette'
	