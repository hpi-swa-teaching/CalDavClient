toolbuilder
buildEventPanelWith: aBuilder

	^ (CALEventGridPanel new
		app: self app;
		day: self day;
		buildSpec: aBuilder)
		frame: (self timeLabelWidth @ self buttonHeight corner: 1 @ 1)