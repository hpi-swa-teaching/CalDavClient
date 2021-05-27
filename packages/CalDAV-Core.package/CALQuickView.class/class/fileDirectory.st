as yet unclassified
fileDirectory

	| delimiter |
	
	delimiter := FileDirectory pathNameDelimiter.
	^ (FileDirectory default directoryNamed: 'CalDAV', delimiter) assureExistence