as yet unclassified
buildTimelineWith: aBuilder

	^ (CALTimeGridPane new
		buildSpec: aBuilder)
		frame: (0 @ (self buttonHeight + self dayLabelHeight ) corner: self timeLabelWidth @1)
			