toolbuilder
buildMonthPane: aBuilder

	^ (CALMonthPane new
				parent: self;
				buildSpec: aBuilder)
				frame: (0.3 @ 0 corner: 1 @ 1)