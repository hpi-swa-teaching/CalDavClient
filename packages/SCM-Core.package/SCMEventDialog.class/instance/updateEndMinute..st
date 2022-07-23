updating
updateEndMinute: aText

	((self isEmptyText: aText) or: [self isValidMinute: aText])
		ifTrue: [self endMinute: aText].
	self updateEnd