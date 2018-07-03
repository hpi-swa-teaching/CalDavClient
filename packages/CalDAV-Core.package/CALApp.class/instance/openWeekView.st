subwindows
openWeekView

	| view |
	
	view := CALWeekView openDay: Date today for: self.
	view
		width: 1300;
		height: self topView height

