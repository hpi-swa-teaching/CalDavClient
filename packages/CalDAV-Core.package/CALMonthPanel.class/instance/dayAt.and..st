accessing
dayAt: aRow and: aColumn
	
	^ self dayAt: ((aRow-1) * 7 + aColumn)