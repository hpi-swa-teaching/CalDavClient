open
openQuickView

	| app |
	
	app := CALApp new prepareCalendars.
	CALQuickView 
		openDay: Time current asDate
		for: app