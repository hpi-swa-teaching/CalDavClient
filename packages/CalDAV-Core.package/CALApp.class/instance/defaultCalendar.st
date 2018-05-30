calender
defaultCalendar

	^self calendars detect: [:calendar | calendar name = self defaultCalendarName]