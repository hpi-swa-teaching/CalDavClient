as yet unclassified
setUp

	| event theDayAfterTomorrow |
	
	theDayAfterTomorrow := DateAndTime today asDate addDays: 2.
	
	event := SCMEvent new
		title: 'Bank ausrauben';
		begin: (DateAndTime
			year: theDayAfterTomorrow year
			month: theDayAfterTomorrow monthIndex
			day: theDayAfterTomorrow dayOfMonth
			hour: 10
			minute: 0);
		end: (DateAndTime
			year: theDayAfterTomorrow year
			month: theDayAfterTomorrow monthIndex
			day: theDayAfterTomorrow dayOfMonth
			hour: 11
			minute: 30);
		location: 'Bank'.
			
	self wantsToTest: (SCMView createWith: (SCMCalendarManager new)).
	self subject calendarManager addCalendar:
		(SCMCalendar new
			addEvent: event
			yourself)