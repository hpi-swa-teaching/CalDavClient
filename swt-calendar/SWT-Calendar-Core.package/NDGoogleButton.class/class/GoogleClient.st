as yet unclassified
GoogleClient
	^ GoogleClient ifNil: [GoogleClient := GoogleCalDAVClient new]