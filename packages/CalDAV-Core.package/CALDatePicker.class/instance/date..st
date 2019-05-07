accessing
date: aDate

	date := aDate.
	shouldUpdate := true.
	self triggerEvent: #dateChanged with: aDate start