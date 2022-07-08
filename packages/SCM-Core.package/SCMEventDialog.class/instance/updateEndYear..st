accessing
updateEndYear: aText

	(self isEmptyText: aText)
		ifTrue: [self eventData at: #endYear put: '']
		ifFalse: [
			(self isValidYear: aText)
				ifTrue: [self endYear: aText]].
	self updateEnd
	