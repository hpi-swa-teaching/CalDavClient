as yet unclassified
openEvent: anEvent forParent: aCALApp

	| dialog |
	
	dialog := self new.
	dialog
		app: aCALApp;
		event: anEvent.
	 ^ ToolBuilder default open: dialog