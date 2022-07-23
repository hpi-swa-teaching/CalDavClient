updating
updateBeginYear: aText

	((self isEmptyText: aText) or: [self isValidYear: aText])
		ifTrue: [self beginYear: aText].
	self updateBegin