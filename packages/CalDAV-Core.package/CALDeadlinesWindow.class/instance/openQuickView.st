toolbuilder
openQuickView

	| date |
	
 	date := Time current asDate.
	CALQuickView openDay: date for: self app.
	self myDependents first abandon