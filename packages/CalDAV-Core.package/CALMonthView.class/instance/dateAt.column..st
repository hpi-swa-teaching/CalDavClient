as yet unclassified
dateAt: aRow column: aColumn
	
	| offset |
	offset :=  (aRow * 7 + aColumn) - self firstOfMonth dayOfWeek