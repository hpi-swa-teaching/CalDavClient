helpers
buildUrlFrom: aHref
	^ (((SCConnectToSabreButton sabreClient) url)asString, aHref, '.ics')asUrl.