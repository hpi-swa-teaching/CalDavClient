accessing
date: aDate

	date := aDate.
	self shouldUpdate: true.
	self triggerEvent: #dateChanged with: aDate start.