accessing
updateEndMinute: aText

	(self isEmptyText: aText)
		ifTrue: [self eventData at: #endMinute put: '']
		ifFalse: [
			(self isValidMinute: aText)
				ifTrue: [self endMinute: aText]].
	self updateEnd