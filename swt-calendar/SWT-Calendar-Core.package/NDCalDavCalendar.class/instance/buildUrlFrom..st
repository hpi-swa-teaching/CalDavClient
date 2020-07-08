as yet unclassified
buildUrlFrom: aHref
	 
	^((NDGoogleCalDavClient calendarURL)asString, '/', aHref, '.ics')asUrl.