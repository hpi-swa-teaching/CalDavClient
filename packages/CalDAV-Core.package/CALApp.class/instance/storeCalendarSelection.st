calendar management
storeCalendarSelection

	| filestream |
	
	filestream := FileStream forceNewFileNamed: (self class fileDirectory fullNameFor: self selectionFileName).
	filestream
		nextPutAll: self selectionData;
		close