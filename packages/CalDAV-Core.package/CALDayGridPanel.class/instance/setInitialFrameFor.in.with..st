as yet unclassified
setInitialFrameFor: anEventBlock in: aColumnIndex with: anEventWidth

	| x |
	
	x := (aColumnIndex - 1) * anEventWidth.
	anEventBlock frame: (x @ (self yBeginPositionFor: anEventBlock event) corner: (x + anEventWidth) @ (self yEndPositionFor: anEventBlock event))