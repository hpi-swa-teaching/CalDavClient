persistence
dataCollection 

	| file collection |
	
	file := FileStream readOnlyFileNamed: (self class calendarDirectory fullNameFor: self name).
	collection := STON fromString: file contents.
	file close.
	^ collection
	