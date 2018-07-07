accessing
calendarsToShow
	^ calendarsToShow ifNil: [calendarsToShow := Set new add: 1;
															yourself]