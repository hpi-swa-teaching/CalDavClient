requests
parseEventInformation: anEventNode

	| properties propertyStatus resultProperties |
	propertyStatus := anEventNode firstTagNamed: #'D:propstat'.
	(propertyStatus firstTagNamed: #'D:status') contents first string = 'HTTP/1.1 200 OK'
		ifFalse: [CalDavGenericException signal: 'There was an error retrieving information for an event'].
		
	properties := (propertyStatus firstTagNamed: #'D:prop') elements.
	resultProperties := Dictionary newFrom: {#urlLocalPart -> (anEventNode firstTagNamed: #'D:href') contents first string}.
	properties 
		select: [:property | property contents notEmpty]
		thenDo: [:property |
			resultProperties at: property name asSymbol put: property contents first string ].
	
	^ resultProperties