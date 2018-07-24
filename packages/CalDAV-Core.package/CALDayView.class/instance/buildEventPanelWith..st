toolbuilder
buildEventPanelWith: aBuilder

	^ (CALDayGridPanel new
				parent: self parent;
				day: self day;
				buildSpec: aBuilder)
				frame: (self timeLabelWidth @ self buttonHeight corner: 1 @ 1)