accessing
retrieveICalString: anEventNode

	| calendarDataNode |
	
	calendarDataNode :=  (anEventNode firstTagNamed: #'cal:calendar-data').
	calendarDataNode ifNil:
		[calendarDataNode := (anEventNode firstTagNamed: #'calendar-data')].

	^ calendarDataNode contentString withInternetLineEndings