initialization
updateWindowSize

	self window extent: (self fullBounds extent
		+ (window extent - window layoutBounds extent))