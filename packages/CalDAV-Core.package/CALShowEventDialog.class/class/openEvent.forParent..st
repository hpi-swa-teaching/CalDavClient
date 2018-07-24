as yet unclassified
openEvent: anEvent forParent: aParent

	| dialog |
	
	dialog := self new.
	dialog
		parent: aParent;
		event: anEvent.
		
	 ^ ToolBuilder default open: dialog