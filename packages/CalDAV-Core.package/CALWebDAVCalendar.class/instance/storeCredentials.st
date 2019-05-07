accessing
storeCredentials

	| filestream |
	
	filestream := FileStream forceNewFileNamed: (self class credentialsDirectory fullNameFor: self name).
	filestream
		nextPutAll: self credentialsData;
		close