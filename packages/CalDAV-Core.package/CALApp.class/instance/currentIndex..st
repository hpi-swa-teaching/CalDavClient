accessing
currentIndex: anObject
	anObject = 0
		ifFalse: [currentIndex := anObject.
				self changed: #currentIndex]