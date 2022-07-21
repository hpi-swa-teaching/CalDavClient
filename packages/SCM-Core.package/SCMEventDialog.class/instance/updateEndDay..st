updating
updateEndDay: aText

	(self isEmptyText: aText)
		ifTrue: [self eventData at: #endDay put: '']
		ifFalse: [
			(self isValidDay: aText)
				ifTrue: [self endDay: aText]].
	self updateEnd