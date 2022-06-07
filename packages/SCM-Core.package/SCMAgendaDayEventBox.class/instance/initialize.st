initialization
initialize

	super initialize.
	self configureLayout.
	self addMorph: (SCMEventMorph from: SCMEvent dummy).

