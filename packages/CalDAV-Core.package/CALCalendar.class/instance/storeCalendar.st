persistence
storeCalendar

	| filestream |
	
	filestream := FileStream forceNewFileNamed: (self class calendarDirectory fullNameFor: self name).
	filestream
		nextPutAll: (STON toString: self);
		close