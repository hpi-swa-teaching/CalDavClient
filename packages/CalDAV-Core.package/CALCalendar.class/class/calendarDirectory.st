constants
calendarDirectory

	| delimiter |
	
	delimiter := FileDirectory pathNameDelimiter.
	^ (FileDirectory default directoryNamed: 'CalDAV', delimiter, 'calendars', delimiter) 	assureExistence