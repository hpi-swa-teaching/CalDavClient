accessing
date: aDate

	super date: aDate.
	self triggerEvent: #dateChanged with: aDate start.