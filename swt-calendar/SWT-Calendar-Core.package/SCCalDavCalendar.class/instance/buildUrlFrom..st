as yet unclassified
buildUrlFrom: aHref
	 
	^((SCGoogleCalDavClient calendarURL)asString, '/', aHref, '.ics')asUrl.