accessing
timeString
	| date | 
	date := self begin.
	^ (self numberToTwoDigitsString: date hour), ':' , (self numberToTwoDigitsString: date minutes).