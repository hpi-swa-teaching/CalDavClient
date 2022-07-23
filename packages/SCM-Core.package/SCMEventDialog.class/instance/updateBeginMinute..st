updating
updateBeginMinute: aText

	((self isEmptyText: aText) or: [self isValidMinute: aText])
		ifTrue: [self beginMinute: aText].
	self updateBegin