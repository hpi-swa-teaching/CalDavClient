as yet unclassified
openEvent: aCALEvent forParent: aParent
	|window|
	window := self new.
	window
		parent: aParent;
		event: aCALEvent.
		
	 ^ToolBuilder default open: window