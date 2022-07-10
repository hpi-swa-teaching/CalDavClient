actions
update: aSymbol

	aSymbol = #eventChanged ifTrue: [self store. self changed: #calendarChanged]