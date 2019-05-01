requests
parseCalendarInformation: responseContent

	| nodes result |
	nodes := self parseXML: responseContent.

	self flag: #TODO. "This is brittle as it assumes that the prefixes stay the same for namespaces, e.g. D: for DAV "
	
	result := CalDavCalendar calendarFieldsMapping values
				collect: [:elementName | (nodes firstTagNamed: elementName)
							ifNotNil: [:element | elementName -> element contentString]].
						
	^ Dictionary newFrom: (result reject: [:o | o isNil]) 