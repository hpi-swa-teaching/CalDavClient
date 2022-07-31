convenience
compressedCopy

	^ SCMCalendar new
		isActive: self isActive;
		title: self title;
		id: self id;
		lastModified: self lastModified;
		color: self color;
		events: self eventsCompressed;
		yourself