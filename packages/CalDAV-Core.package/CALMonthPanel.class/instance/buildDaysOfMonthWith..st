toolbuilder
buildDaysOfMonthWith: aBuilder

	| spaceForWeekdays |
	spaceForWeekdays := 1/12. 
	^ aBuilder pluggablePanelSpec new
		model: self;
		name: 'daysOfMonth';
		frame: (0 @ (self buttonHeight + spaceForWeekdays) corner: 1 @ 1);
		children: (self buildDayGrid: aBuilder);
		yourself