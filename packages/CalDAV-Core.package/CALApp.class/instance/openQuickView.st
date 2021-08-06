subwindows
openQuickView

	self window abandon.
	^ CALQuickView 
		openDay: Time current asDate
		for: self