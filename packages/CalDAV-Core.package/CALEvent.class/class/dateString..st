as yet unclassified
dateString: aDate
	
	^(CALEvent numberToTwoDigitsString: aDate dayOfMonth) , '.' , (CALEvent numberToTwoDigitsString: aDate month), '.', aDate year asString