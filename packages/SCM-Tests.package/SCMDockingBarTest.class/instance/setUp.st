running
setUp

	self app: SCMApp new.
	self wantsToTest: (SCMDockingBar createWith: self app)