updating
updateEndYear: aText

	((self isEmptyText: aText) or: [self isValidYear: aText])
		ifTrue: [self endYear: aText].
	self updateEnd