accessing
save

	self isDirty ifTrue: [
		self client saveEvent: self serverCalendar to: self url at: self etag.
		self etag ifEmpty: [self etag: (self client fetchEtagOfEventFrom: self url)]].
	self setClean.