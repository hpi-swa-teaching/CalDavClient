accessing
updateEndMonth: aText

	(self isEmptyText: aText)
		ifTrue: [self eventData at: #endMonth put: '']
		ifFalse: [
			(self isValidMonth: aText)
				ifTrue: [self eventData at: #endMonth put: aText asString]].
	self updateEnd