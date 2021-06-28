open
open

	| app |
	
	app := CALApp new prepareCalendars.
	^ (ToolBuilder default open: app) 
			extent: 1500 @ 700;
			position: 0 @ 0;
			yourself