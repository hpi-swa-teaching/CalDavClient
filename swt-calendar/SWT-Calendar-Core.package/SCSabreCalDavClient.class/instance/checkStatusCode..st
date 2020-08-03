accessing
checkStatusCode: anEventNode

	| propstatNode |
	
	propstatNode := anEventNode firstTagNamed: #'d:propstat'.
	
	(propstatNode firstTagNamed: #'d:status') contentString = 'HTTP/1.1 200 OK'
		ifFalse: [self throwEventParsingException]