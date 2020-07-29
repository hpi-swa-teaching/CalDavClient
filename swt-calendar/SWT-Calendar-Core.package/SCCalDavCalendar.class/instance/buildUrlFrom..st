as yet unclassified
buildUrlFrom: aHref
	 
	^(((SCSabreButton sabreClient) url)asString, aHref, '.ics')asUrl.