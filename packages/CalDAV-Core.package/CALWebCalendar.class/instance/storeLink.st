accessing
storeLink

	| filestream |
	
	filestream := FileStream forceNewFileNamed: (self class calendarDirectory fullNameFor: self name).
	filestream
		nextPutAll: self caldavLink;
		close.