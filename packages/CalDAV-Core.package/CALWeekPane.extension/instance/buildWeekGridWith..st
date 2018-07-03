as yet unclassified
buildWeekGridWith: aBuilder

	 | y |
	
	 y := self buttonHeight.
	 ^ (CALWeekGridPane new
			parent: self parent;
			startDay: self day;
			buildSpec: aBuilder)
			frame: (self timeLabelWidth @ y corner: 1 @ 1)