toolbuilder
buildWeekGridWith: aBuilder

	 | y |
	
	 y := self buttonHeight.
	 ^ (CALWeekGridPanel new
			parent: self parent;
			startDay: self startDay;
			buildSpec: aBuilder)
			frame: (self timeLabelWidth @ y corner: 1 @ 1)