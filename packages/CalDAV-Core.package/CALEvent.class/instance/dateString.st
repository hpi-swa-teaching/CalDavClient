accessing
dateString
	| date | 
	date := self begin.
	
	^(self numberToTwoDigitsString: date dayOfMonth) , '.' , (self numberToTwoDigitsString: date month), '.', date year asString