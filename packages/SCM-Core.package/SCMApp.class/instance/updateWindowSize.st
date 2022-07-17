initialization
updateWindowSize

	self window extent: (self fullBounds extent
		+ self window extent - self window layoutBounds extent)