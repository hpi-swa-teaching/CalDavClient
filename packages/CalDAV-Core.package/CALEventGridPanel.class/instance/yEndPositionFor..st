event block layouting
yEndPositionFor: anEvent
	
	| relativeHeight yPosition |
	
	(anEvent isFullDay or: (anEvent isFullDayFor: self day))
		ifTrue: [yPosition := 1/25] 
		ifFalse:[
			relativeHeight := ((anEvent end hour +1) * 60 + anEvent end minute) / (25 * 60).
			anEvent isMultipleDay 
				ifTrue: [(anEvent endsIn: day) 
					ifFalse: [relativeHeight := 1]]. 
			yPosition := relativeHeight].
	^ yPosition