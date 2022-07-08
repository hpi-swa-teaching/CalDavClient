accessing
compressedCopy

	^ SCMCalendar new
		isActive: self isActive;
		title: self title;
		id: self id;
		color: self color;
		events: self eventsCompressed;
		yourself