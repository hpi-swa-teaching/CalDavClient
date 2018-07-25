initialize
openEvent: anEvent forParent: aParent

	| dialog |
	
	dialog := self new.
	dialog
		app: aParent;
		event: anEvent;
		oldEvent: anEvent.
		
	 ^ ToolBuilder default open: dialog