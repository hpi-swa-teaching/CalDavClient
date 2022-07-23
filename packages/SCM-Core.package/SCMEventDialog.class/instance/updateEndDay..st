updating
updateEndDay: aText

	((self isEmptyText: aText) or: [self isValidDay: aText])
		ifTrue: [self endDay: aText].
	self updateEnd