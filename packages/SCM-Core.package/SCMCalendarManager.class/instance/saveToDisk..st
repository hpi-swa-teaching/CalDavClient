save and load
saveToDisk: aSCMCalendar

	(FileStream forceNewFileNamed: aSCMCalendar fullName)
		nextPutAll: aSCMCalendar eventsData;
		close

	