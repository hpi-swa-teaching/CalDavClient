accessing
currentIndex: aNumber

	aNumber = 0
		ifFalse: [currentIndex := aNumber. 
			self changed: #currentIndex]