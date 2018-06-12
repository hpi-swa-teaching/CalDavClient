accessing
nextDay

	self day: (self day addDays: 1).
	self changed: #dayText