accessing
delete

	self calendarDirectory deleteFileNamed: self fullTitle.
	self changed: #calendarChanged