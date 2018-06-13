as yet unclassified
yPositionFor: aDateAndTime
	
	| relativeHeight yPosition |
	relativeHeight := ((aDateAndTime hour * 60) + aDateAndTime minute) / (24 * 60).
	yPosition := self buttonHeight  + ((1 - self buttonHeight) * relativeHeight).
	^ yPosition