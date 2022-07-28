actions
update: aSymbol

	aSymbol = #calendarsChanged ifTrue: [self reload]