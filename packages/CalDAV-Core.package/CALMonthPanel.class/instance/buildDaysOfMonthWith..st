toolbuilder
buildDaysOfMonthWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		name: 'daysOfMonth';
		frame: (0 @ (self buttonHeight + self spaceForWeekDays) corner: 1 @ 1);
		children: (self buildDayGrid: aBuilder);
		yourself