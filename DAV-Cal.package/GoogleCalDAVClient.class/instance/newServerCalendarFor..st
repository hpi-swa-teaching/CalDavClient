authorization
newServerCalendarFor: aCalDavCalendar

	^ ICCalendar new
		productId: '-//Google Inc//Google Calendar 70.9054//EN';
		method: 'PUBLISH';
		name: aCalDavCalendar calendarName;
		version: '2.0'
		
		