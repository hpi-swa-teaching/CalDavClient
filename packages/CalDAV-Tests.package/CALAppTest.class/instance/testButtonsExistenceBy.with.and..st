testing
testButtonsExistenceBy: aSymbol with: aLabel and: anotherSymbol

	| button |
	
	button := ((self app 
					perform: aSymbol 
					with: ToolBuilder default) 
				buildWith: ToolBuilder default).
	self assert: (button label submorphs first name = aLabel
				and: [button actionSelector = anotherSymbol])

	