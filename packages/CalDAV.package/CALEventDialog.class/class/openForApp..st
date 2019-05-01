initialize
openForApp: aParent

	| dialog |
	
	dialog := self new.
	dialog
		app: aParent.	
		
	 ^ ToolBuilder default open: dialog