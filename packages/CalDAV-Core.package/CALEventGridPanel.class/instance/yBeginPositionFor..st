positioning
yBeginPositionFor: anEvent
	
	| relativeHeight yPosition |
	
	(anEvent isFullDay or: (anEvent isFullDayFor: self day))
		ifTrue: [yPosition := 0] 
		ifFalse:[
			relativeHeight := ((anEvent begin hour +1) * 60 + anEvent begin minute) / (25 * 60).
			anEvent isMultipleDay 
				ifTrue: [(anEvent beginsIn: day) 
					ifFalse: [relativeHeight := (1/25)]]. 
			yPosition := relativeHeight].
	^ yPosition