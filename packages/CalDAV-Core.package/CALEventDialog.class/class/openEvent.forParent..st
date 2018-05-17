as yet unclassified
openEvent: aCALEvent forParent: aParent

	| dialog |
	
	dialog := self new.
	dialog
		parent: aParent;
		event: aCALEvent.
		
	 ^ToolBuilder default open: dialog