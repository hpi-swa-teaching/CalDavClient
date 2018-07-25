requests
parseCalendarInformation: responseContent

	| nodes result |
	nodes := self parseXML: responseContent.

	result := self calendarFieldsMapping values
				collect: [:elementName | (nodes firstTagNamed: elementName)
							ifNotNil: [:element | elementName -> element contentString]].
						
	^ Dictionary newFrom: (result reject: [:o | o isNil]) 