actions
update: aSymbol

	aSymbol = #calendarChanged
		ifTrue: [^ self changed: #calendarsChanged]