accessing
store

	(FileStream forceNewFileNamed: self fullTitle)
		nextPutAll: self eventsData;
		close

	