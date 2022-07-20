initialization
initialize

	super initialize.
	SmalltalkImage current addToStartUpList: self.
	self startUp: true