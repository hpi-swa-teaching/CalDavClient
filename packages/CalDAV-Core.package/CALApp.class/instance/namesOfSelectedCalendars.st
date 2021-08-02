calendar management
namesOfSelectedCalendars

	| file names |
	
	file := FileStream readOnlyFileNamed: (self class fileDirectory fullNameFor: self selectionFileName).
	names := STON fromString: file contents.
	file close.
	^ names