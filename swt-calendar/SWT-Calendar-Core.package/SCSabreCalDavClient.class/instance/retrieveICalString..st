accessing
retrieveICalString: anEventNode

	| calendarDataNode |
	
	calendarDataNode :=  (anEventNode firstTagNamed: #'cal:calendar-data'). "#'caldav:calendar-data' if you use the GoogleCalDavClient"
	calendarDataNode ifNil:
		[calendarDataNode := (anEventNode firstTagNamed: #'calendar-data')].

	^ calendarDataNode contentString withInternetLineEndings