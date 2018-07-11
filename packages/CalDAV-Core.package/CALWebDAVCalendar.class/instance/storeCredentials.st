accessing
storeCredentials

	| filestream |
	
	filestream := FileStream forceNewFileNamed: (self class calendarDirectory fullNameFor: self name).
	filestream
		nextPutAll: self credentialsData;
		close