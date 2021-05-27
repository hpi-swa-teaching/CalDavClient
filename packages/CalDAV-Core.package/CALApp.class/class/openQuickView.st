open
openQuickView

	| app date |
	
	app := CALApp new prepareCalendars.
	"get current date"
 	date := Time current asDate.
	CALQuickView openDay: date for: app.