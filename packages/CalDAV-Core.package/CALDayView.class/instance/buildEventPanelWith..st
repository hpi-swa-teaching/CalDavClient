as yet unclassified
buildEventPanelWith: aBuilder

	^ (CALDayPane new
				parent: self parent;
				day: self day;
				buildSpec: aBuilder)
				frame: (self timeLabelWidth  @ self buttonHeight corner: 1@1)