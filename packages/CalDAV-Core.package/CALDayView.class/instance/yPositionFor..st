as yet unclassified
yPositionFor: aTime
	
	| relativeHeight yPosition |
	relativeHeight := ((aTime * 60)) / (24 * 60).
	yPosition := relativeHeight.
	^ yPosition