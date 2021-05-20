toolbuilder
buildDaysOfMonthWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		name: 'daysOfMonth';
		frame: (0 @ (self buttonHeight + 1/6) corner: 1 @ 1);
		children: (self buildDayGrid: aBuilder);
		yourself