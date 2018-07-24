as yet unclassified
testParseEventsInformation

	| information |
	
	information := self sabreDAVClient parseEventsInformation: self responseContent.
	self assert: (information first at: 'd:displayname') equals: 'WebDav Test'.
	self assert: (information second at: 'd:getcontenttype') equals: 'text/calendar; charset=utf-8; component=vevent'
	