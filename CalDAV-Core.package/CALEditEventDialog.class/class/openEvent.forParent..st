initialize
openEvent: anEvent forParent: aCALApp

	| dialog |
	
	dialog := self new.
	dialog
		app: aCALApp;
		event: anEvent;
		oldEvent: anEvent.
	 ^ ToolBuilder default open: dialog