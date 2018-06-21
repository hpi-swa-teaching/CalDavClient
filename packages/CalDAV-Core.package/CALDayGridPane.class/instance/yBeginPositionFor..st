as yet unclassified
yBeginPositionFor: anEvent
	
	| relativeHeight yPosition |
	
	anEvent isFullDay 
		ifTrue: [yPosition := 0] 
		ifFalse:[
			relativeHeight := ((anEvent begin hour +1 * 60) + anEvent begin minute) / (25 * 60).
			yPosition := relativeHeight.].
	^ yPosition