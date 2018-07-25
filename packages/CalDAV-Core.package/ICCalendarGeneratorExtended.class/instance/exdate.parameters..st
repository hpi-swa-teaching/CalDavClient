processing-properties
exdate: aString parameters: aDictionary
	| dates |
	dates := self createMulitValue: aString parameters: aDictionary type: 'DATE-TIME'.
	self tempComponent exclusionDates: dates