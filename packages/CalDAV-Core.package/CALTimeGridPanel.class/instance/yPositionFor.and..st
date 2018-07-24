positioning
yPositionFor: anHour and: aMinute
	
	| relativeHeight yPosition |
	
	relativeHeight := ((anHour * 60) + aMinute) / (25 * 60).
	yPosition := relativeHeight.
	^ yPosition