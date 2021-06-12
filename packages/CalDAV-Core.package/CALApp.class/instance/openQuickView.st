subwindows
openQuickView

	| date |
	
 	date := Time current asDate.
	CALQuickView openDay: date for: self.
	self myDependents first abandon