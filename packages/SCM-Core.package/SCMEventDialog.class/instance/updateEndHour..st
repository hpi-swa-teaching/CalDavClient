updating
updateEndHour: aText
	
	((self isEmptyText: aText) or: [self isValidHour: aText])
		ifTrue: [self endHour: aText].
	self updateEnd