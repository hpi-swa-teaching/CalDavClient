as yet unclassified
openForApp: aParent

	| dialog |
	
	dialog := self new.
	dialog
		parent: aParent.	
		
	 ^ToolBuilder default open: dialog