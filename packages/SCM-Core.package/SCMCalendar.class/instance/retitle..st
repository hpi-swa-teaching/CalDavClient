actions
retitle: aString

	self delete.
	self title: aString.
	self store.
	self changed: #calendarChanged