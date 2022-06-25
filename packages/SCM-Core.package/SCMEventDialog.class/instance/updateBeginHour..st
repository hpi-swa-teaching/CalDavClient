accessing
updateBeginHour: aText

	(self isEmptyText: aText)
		ifTrue: [self eventData at: #beginHour put: '']
		ifFalse: [
			(self isValidHour: aText)
				ifTrue: [self eventData at: #beginHour put: aText asString]].
	self updateBegin