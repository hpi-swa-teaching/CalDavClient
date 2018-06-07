queries
fetchCalendarQuery

	^ DAVPropFindQuery
		namespaces: #((cs 'http://calendarserver.org/ns/') (caldav 'urn:ietf:params:xml:ns:caldav'))
		properties: #('cs:getctag' 'D:displayname' 'caldav:calendar-description')