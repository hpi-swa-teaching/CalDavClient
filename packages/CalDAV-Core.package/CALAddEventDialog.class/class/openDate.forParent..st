initialize
openDate: aDate forParent: aParent

	| dialog datedEvent |
	
	dialog := self new.
	datedEvent := dialog event
		begin: aDate start;
		end: aDate start.
	dialog
		parent: aParent;
		event: datedEvent.
		
	 ^ ToolBuilder default open: dialog