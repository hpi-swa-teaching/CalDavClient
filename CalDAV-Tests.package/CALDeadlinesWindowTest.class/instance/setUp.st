running
setUp

	| morph |
	
	self deadlinesView: (CALDeadlinesWindow new app: CALApp new prepareCalendars).
	morph := Morph new openInWorld.
	self world: morph world.
	morph abandon