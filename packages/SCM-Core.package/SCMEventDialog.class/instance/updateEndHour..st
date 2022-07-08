accessing
updateEndHour: aText
	
	(self isEmptyText: aText)
		ifTrue: [self eventData at: #endHour put: '']
		ifFalse: [
			(self isValidHour: aText)
				ifTrue: [self endHour: aText]].
	self updateEnd