initialization
switch

	self view switch.
	self window extent: (self fullBounds extent
		+ (window extent - window layoutBounds extent))