testing
testButtonExistence

	| button |
	
	button := ((self app buildAddCalendarButton: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'add') and: [button actionSelector = #openAddCalendarDialog]).
	
	button := ((self app buildDeadlinesViewButton: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'hourglass') and: [button actionSelector = #openDeadlinesView]).
	
	button := ((self app buildDeleteCalendarButton: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'minus') and: [button actionSelector = #openDeleteCalendarDialog]).
	
	button := ((self app buildICSCalendarButton: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'ics-format') and: [button actionSelector = #importSubscriptionCalendar]).
	
	button := ((self app buildImportCalendarButton: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'caldav-format') and: [button actionSelector = #importWebDAVCalendar]).
	
	button := ((self app buildMonthViewButton: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'm') and: [button actionSelector = #openMonthView]).
	
	button := ((self app buildQuickViewButton: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'list') and: [button actionSelector = #openQuickView]).
	
	button := ((self app buildRefreshButton: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'refresh') and: [button actionSelector = #refreshCalendars]).
	
	button := ((self app buildWeekViewButton: ToolBuilder default) buildWith: ToolBuilder default).
	self assert: (((button label submorphs at: 1) name = 'w') and: [button actionSelector = #openWeekView])