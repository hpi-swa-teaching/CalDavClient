toolbuilder
buildDaysOfMonthWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		name: 'daysOfMonth';
		frame: (0 @ self buttonHeight corner: 1 @ 1);
		children: (self buildDayLists: aBuilder);
		yourself