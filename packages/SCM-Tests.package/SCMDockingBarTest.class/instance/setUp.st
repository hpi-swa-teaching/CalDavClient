running
setUp

	self app: SCMApp startDummy.
	self wantsToTest: (SCMDockingBar createWith: self app)