accessing
checkStatusCode: anEventNode

	| propstatNode |
	
	propstatNode := anEventNode firstTagNamed: #'d:propstat'. "#'D:propstat' if you use the GoogleCalDavClient"
	
	
	(propstatNode firstTagNamed: #'d:status') contentString = 'HTTP/1.1 200 OK' "#'D:status' if you use the GoogleCalDavClient"
		ifFalse: [self throwEventParsingException]