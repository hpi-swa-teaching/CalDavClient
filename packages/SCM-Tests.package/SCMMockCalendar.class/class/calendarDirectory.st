as yet unclassified
calendarDirectory

	| delimiter |

	delimiter := FileDirectory pathNameDelimiter.
	
	^ (FileDirectory default
			directoryNamed: 'SCM', delimiter, 'mockCalendars', delimiter) assureExistence