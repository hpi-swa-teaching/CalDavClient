accessing
parseEventInformation: anEventNode

	| propertyNodes eventProperties |
	
	self checkStatusCode: anEventNode.
	propertyNodes := (anEventNode firstTagNamed: #'d:prop') elements. "#'D:prop' if you use the GoogleCalDavClient"
	eventProperties := self createEventPropertyLookup: propertyNodes.
	eventProperties at: #urlLocalPart put: (self retrieveHref: anEventNode).
		
	^ eventProperties