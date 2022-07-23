updating
updateBeginMonth: aText

	((self isEmptyText: aText) or: [self isValidMonth: aText])
		ifTrue: [self beginMonth: aText].
	self updateBegin