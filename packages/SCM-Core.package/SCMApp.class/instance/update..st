accessing
update: aSymbol

	aSymbol = #calendarChanged ifTrue: [self reload]