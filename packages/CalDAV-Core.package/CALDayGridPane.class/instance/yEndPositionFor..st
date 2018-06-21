as yet unclassified
yEndPositionFor: anEvent
	
	| relativeHeight yPosition |
	
	anEvent isFullDay 
		ifTrue: [yPosition := 1/25] 
		ifFalse:[
			relativeHeight := ((anEvent end hour +1 * 60) + anEvent end minute) / (25 * 60).
			yPosition := relativeHeight.].
	^ yPosition