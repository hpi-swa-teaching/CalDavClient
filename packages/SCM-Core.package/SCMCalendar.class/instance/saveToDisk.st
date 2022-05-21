accessing
saveToDisk

	(FileStream forceNewFileNamed: self fullName)
		nextPutAll: self eventsData;
		close.