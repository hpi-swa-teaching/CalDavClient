as yet unclassified
update: aSymbol

	aSymbol = #eventsChanged ifTrue: [^ self changed: #calendarsChanged].