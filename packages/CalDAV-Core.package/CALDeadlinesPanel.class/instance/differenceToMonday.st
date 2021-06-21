toolbuilder
differenceToMonday

	| differenceToMonday |
	
	self day dayOfWeek = 1
		ifTrue: [differenceToMonday := 6]
		ifFalse: [differenceToMonday := self day dayOfWeek - 2].
	^ differenceToMonday