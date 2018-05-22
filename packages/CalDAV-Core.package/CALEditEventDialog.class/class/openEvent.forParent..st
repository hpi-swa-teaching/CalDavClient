initialize
openEvent: anEvent forParent: aParent

	| dialog |
	
	dialog := self new.
	dialog
		parent: aParent;
		event: anEvent;
		oldEvent: anEvent.
		
	 ^ToolBuilder default open: dialog