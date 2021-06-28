constants
fileDirectory

	^ (FileDirectory default directoryNamed: 'CalDAV', FileDirectory pathNameDelimiter) assureExistence