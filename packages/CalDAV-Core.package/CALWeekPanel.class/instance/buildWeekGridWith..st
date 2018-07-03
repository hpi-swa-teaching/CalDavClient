as yet unclassified
buildWeekGridWith: aBuilder

	 | y |
	
	 y := self buttonHeight.
	 ^ (CALWeekGridPanel new
			parent: self parent;
			startDay: self day;
			buildSpec: aBuilder)
			frame: (self timeLabelWidth @ y corner: 1 @ 1)