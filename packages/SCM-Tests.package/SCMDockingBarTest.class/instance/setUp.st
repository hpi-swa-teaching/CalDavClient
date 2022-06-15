running
setUp

	self app: SCMApp new.
	self wantsToTest: (SCMDockingBar createWithApp: self app)