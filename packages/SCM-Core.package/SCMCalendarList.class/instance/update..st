save and load
update: aSymbol

	aSymbol = #calendarsChanged ifTrue: [self changed: #editableCalendarsNames. self resetIndex.]