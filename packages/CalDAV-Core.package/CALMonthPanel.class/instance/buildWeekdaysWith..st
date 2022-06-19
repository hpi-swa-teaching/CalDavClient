toolbuilder
buildWeekdaysWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		name: 'weekDays';
		frame: (0 @ self buttonHeight corner: 1 @ 0.75);
		children: (self buildWeekdaysText: aBuilder);
		yourself