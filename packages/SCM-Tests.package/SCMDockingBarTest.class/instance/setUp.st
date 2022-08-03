running
setUp

	self app: SCMMockApp start.
	self wantsToTest: (SCMDockingBar createWith: self app)