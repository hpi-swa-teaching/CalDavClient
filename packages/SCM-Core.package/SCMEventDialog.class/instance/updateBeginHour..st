updating
updateBeginHour: aText

	((self isEmptyText: aText) or: [self isValidHour: aText])
		ifTrue: [self beginHour: aText].
	self updateBegin