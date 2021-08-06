toolbuilder
openQuickView

	self myDependents first abandon.
	^ CALQuickView
		openDay: Time current asDate
		for: self app
	