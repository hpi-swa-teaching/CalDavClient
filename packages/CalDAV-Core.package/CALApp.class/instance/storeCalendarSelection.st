calendar management
storeCalendarSelection

	(FileStream forceNewFileNamed: (self class fileDirectory fullNameFor: self selectionFileName))
		nextPutAll: self selectionData;
		close