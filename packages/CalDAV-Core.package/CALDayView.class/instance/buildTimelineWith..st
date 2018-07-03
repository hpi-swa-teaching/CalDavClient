as yet unclassified
buildTimelineWith: aBuilder

	^ (CALTimeGridPanel new
		buildSpec: aBuilder)
		frame: (0 @ self buttonHeight corner: self timeLabelWidth @1)
			