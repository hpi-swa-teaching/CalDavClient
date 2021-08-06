running
setUp

	self app: CALApp new prepareCalendars.
	self deadlinesView: (CALDeadlinesWindow new app: self app)