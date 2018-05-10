accessing
timeString
	| date | 
	date := self begin.
	^ date hour asString, ':' , date minutes asString.