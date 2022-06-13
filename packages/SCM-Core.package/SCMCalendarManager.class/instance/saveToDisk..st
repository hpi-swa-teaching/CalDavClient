as yet unclassified
saveToDisk: aSCMCalendar

	(FileStream forceNewFileNamed: aSCMCalendar fullName)
		nextPutAll: aSCMCalendar eventsData;
		close

	