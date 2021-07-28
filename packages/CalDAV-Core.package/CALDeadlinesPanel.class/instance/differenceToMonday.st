toolbuilder
differenceToMonday

	| differenceToMonday |
	
	self firstDay dayOfWeek = 1
		ifTrue: [differenceToMonday := 6]
		ifFalse: [differenceToMonday := self firstDay dayOfWeek - 2].
	^ differenceToMonday