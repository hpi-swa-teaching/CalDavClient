accessing
compressed

	^ SCMCalendar new
		isActive: self isActive;
		title: self title;
		id: self id;
		events: self eventsCompressed;
		yourself