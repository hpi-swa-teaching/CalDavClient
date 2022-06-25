accessing
compressed

	^ SCMCalendar new
		isActive: self isActive;
		title: self title;
		events: self eventsCompressed;
		yourself