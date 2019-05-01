requests
parseEventsInformation: responseContent at: calendarUrl

	| xmlDocument eventResults result |

	xmlDocument := XMLDOMParser parseDocumentFrom: responseContent readStream.
	result := xmlDocument root.
	eventResults := result elements.
	^ eventResults 
		select: [:resultNode |
			(resultNode firstTagNamed: #'D:href') contents first string ~= calendarUrl localPartUrl]
		thenCollect: [:resultNode |
			self parseEventInformation: resultNode].
