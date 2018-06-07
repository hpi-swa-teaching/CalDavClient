as yet unclassified
dayAt: aRow and: aColumn
	
	^ ((aRow-1) * 7 + aColumn) - self firstOfMonth dayOfWeek +1