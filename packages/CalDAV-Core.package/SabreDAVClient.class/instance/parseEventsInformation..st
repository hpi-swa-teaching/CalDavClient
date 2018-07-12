requests
parseEventsInformation: responseContent

	| xmlDocument eventResults result |

	xmlDocument := XMLDOMParser parseDocumentFrom: responseContent readStream.
	result := xmlDocument root.
	eventResults := result elements.
	^ eventResults 
		select: [:resultNode |
			((resultNode firstTagNamed: #'d:resourcetype') elements
				anySatisfy: [:e | e name = 'caldav:calendar']) not]
		thenCollect: [:resultNode |
			self parseEventInformation: resultNode].
