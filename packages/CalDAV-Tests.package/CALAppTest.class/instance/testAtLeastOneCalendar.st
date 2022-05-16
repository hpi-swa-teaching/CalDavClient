testing
testAtLeastOneCalendar

	self assert: CALApp new prepareCalendarsForTesting calendars size > 0 description: 'There 	should at least be one calendar in a new app'