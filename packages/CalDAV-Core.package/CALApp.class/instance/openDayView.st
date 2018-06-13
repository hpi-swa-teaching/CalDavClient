subwindows
openDayView

	| view |
	
	view := CALDayView openForApp: self.
	view
		height: self topView height

