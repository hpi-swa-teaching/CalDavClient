as yet unclassified
buildUrlFrom: aHref
	 
	^(self class calendarURL, '/', aHref, '.ics')asURI.