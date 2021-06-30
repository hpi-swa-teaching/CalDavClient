persistence
storeEvents

	(FileStream forceNewFileNamed: (self class calendarDirectory fullNameFor: self name))
		nextPutAll: self calendarData;
		close