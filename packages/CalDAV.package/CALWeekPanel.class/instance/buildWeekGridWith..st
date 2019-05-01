toolbuilder
buildWeekGridWith: aBuilder

	 | y |
	
	 y := self buttonHeight.
	 ^ (CALWeekGridPanel new
			app: self app;
			startDay: self startDay;
			buildSpec: aBuilder)
			frame: (self timeLabelWidth @ y corner: 1 @ 1)