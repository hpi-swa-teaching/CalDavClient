initialization
addDockingBar

	self 
		dockingBar: (SCMDockingBar createWith: self);
		addMorph: self dockingBar