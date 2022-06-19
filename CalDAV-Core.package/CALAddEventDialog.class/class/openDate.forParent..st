initialize
openDate: aDate forParent: aCALApp

	| dialog datedEvent |
	
	dialog := self new.
	datedEvent := dialog event
		begin: aDate start;
		end: aDate start.
	dialog
		app: aCALApp;
		event: datedEvent.
	 ^ ToolBuilder default open: dialog