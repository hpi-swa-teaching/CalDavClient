as yet unclassified
calendarDirectory

	| delimiter |
	
	delimiter := FileDirectory pathNameDelimiter.
	^(FileDirectory default directoryNamed: 'CalDAV', delimiter, 'webcalendars', delimiter) assureExistence.