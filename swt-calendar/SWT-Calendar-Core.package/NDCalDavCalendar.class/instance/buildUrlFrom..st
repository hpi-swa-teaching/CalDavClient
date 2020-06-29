as yet unclassified
buildUrlFrom: aHref
	 
	^(NDGoogleCalDavClient calendarURL, '/', aHref, '.ics')asURI.