running
setUp

	self app: CALApp new prepareCalendars.
	self deadlinesEventPanel: (CALDeadlinesEventPanel new app: self app).
	self deadlinesEventPanel days: {Date year: Date today year day: 1 . Date year: Date today year day: 2 . Date year: Date today year day: 3}.
	self deadlinesEventPanel weekNumber: 0