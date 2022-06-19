toolbuilder
buildWeekPanel: aBuilder

	^ (self weekPanel buildSpec: aBuilder) frame: (0.15 @ 0.06 corner: 1 @ 1)