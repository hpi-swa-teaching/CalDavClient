accessing
storeLink

	(FileStream forceNewFileNamed: (self class calendarDirectory fullNameFor: self name))
		nextPutAll: self caldavLink;
		close