toolbuilder
buildWeekPanel: aBuilder

	^ (self weekPanel buildSpec: aBuilder) frame: (0.3 @ 0 corner: 1 @ 1)