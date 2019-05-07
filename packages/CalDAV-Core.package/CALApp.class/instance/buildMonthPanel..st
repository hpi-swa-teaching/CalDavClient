toolbuilder
buildMonthPanel: aBuilder
	
	^ (self monthPanel buildSpec: aBuilder) frame: (0.3 @ 0 corner: 1 @ 1)