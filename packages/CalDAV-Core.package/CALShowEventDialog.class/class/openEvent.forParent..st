as yet unclassified
openEvent: anEvent forParent: aParent

	| dialog |
	
	dialog := self new.
	dialog
		app: aParent;
		event: anEvent.
		
	 ^ ToolBuilder default open: dialog