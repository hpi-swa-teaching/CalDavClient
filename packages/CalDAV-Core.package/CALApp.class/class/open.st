open
open

	| app |
	app := CALApp new prepareCalendars.
	^ (ToolBuilder default open: app) 
			extent: 1270 @ 750;
			position: 0 @ 0;
			yourself