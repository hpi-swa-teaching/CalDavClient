open
openQuickView

	| app date |
	
	app := CALApp new prepareCalendars.
 	date := Time current asDate.
	CALQuickView openDay: date for: app