subwindows
openMonthView

	| view |
	
	view := CALMonthView openForApp: self.
	view
		width: 1300;
		height: self topView height

