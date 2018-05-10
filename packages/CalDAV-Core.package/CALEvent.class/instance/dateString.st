accessing
dateString
	| date | 
	date := self begin.
	^ date dayOfMonth asString , '.' , date month asString, '.', date year asString