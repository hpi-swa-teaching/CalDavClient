testing
testButtonExistence

	self testButtonsExistenceBy: #buildAddCalendarButton: with: 'add' and: #openAddCalendarDialog.
	self testButtonsExistenceBy: #buildDeleteCalendarButton: with: 'minus' and: #openDeleteCalendarDialog.
	self testButtonsExistenceBy: #buildQuickViewButton: with: 'list' and: #openQuickView.
	self testButtonsExistenceBy: #buildDeadlinesViewButton: with: 'hourglass' and: #openDeadlinesView.
	self testButtonsExistenceBy: #buildRefreshButton: with: 'refresh' and: #refreshCalendars.
	self testButtonsExistenceBy: #buildICSCalendarButton: with: 'ics-format' and: #importSubscriptionCalendar.
	self testButtonsExistenceBy: #buildImportCalendarButton: with: 'caldav-format' and: #importWebDAVCalendar.
	self testButtonsExistenceBy: #buildMonthViewButton: with: 'm' and: #openMonthView.
	self testButtonsExistenceBy: #buildWeekViewButton: with: 'w' and: #openWeekView.