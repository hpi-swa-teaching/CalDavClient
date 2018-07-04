ui
highlightTitle
	self event isTitleValid
		ifFalse: [self titleColor: Color paleRed]
		ifTrue: [self titleColor: self defaultColor]