initialization
addDockingBar

	self 
		dockingBar: (SCMDockingBar createWithApp: self);
		addMorph: self dockingBar