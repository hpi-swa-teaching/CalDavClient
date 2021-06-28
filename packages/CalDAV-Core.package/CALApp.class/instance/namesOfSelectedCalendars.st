calendar management
namesOfSelectedCalendars

	| file names |
	
	(self class fileDirectory fileExists: self selectionFileName) ifFalse: [^ self].
	file := FileStream readOnlyFileNamed: (self class fileDirectory fullNameFor: self selectionFileName).
	names := STON fromString: file contents.
	file close.
	^ names