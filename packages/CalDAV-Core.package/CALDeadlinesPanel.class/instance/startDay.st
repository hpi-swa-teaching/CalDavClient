toolbuilder
startDay

	| differenceToMonday |
	
	self day dayOfWeek = 1
		ifTrue: [differenceToMonday := 6]
		ifFalse: [differenceToMonday := self day dayOfWeek - 2].
	^ self day subtractDays: differenceToMonday