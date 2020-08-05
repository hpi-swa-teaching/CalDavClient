as yet unclassified
buildUrlFrom: aHref
	 
	^(((SCConnectToSabreButton sabreClient) url)asString, aHref, '.ics')asUrl.