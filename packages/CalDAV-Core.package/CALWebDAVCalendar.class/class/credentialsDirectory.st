as yet unclassified
credentialsDirectory

	| delimiter |
	
	delimiter := FileDirectory pathNameDelimiter.
	^ (FileDirectory default directoryNamed: 'CalDAV', delimiter, 'webdavcalendars', delimiter, 'syncdata', delimiter) assureExistence