as yet unclassified
yPositionFor: anHour and: aMinute
	
	| relativeHeight yPosition |
	
	relativeHeight := ((anHour * 60) + aMinute) / (24 * 60).
	yPosition := relativeHeight.
	^ yPosition