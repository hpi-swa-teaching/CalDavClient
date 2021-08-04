running
setUp

	self app: CALApp new prepareCalendars.
	self deadlinesPanel: (CALDeadlinesPanel new app: self app)