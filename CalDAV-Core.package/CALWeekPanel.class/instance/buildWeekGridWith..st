toolbuilder
buildWeekGridWith: aBuilder

	 ^ (CALWeekGridPanel new
			app: self app;
			startDay: self startDay;
			buildSpec: aBuilder)
			frame: (self timeLabelWidth @ self buttonHeight corner: 1 @ 1)