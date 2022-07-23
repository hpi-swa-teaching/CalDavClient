updating
updateBeginDay: aText 

	((self isEmptyText: aText) or: [self isValidDay: aText])
		ifTrue: [self beginDay: aText].
	self updateBegin