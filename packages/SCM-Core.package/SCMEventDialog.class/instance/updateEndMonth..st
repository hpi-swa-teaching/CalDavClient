updating
updateEndMonth: aText

	((self isEmptyText: aText) or: [self isValidMonth: aText])
		ifTrue: [self endMonth: aText].
	self updateEnd