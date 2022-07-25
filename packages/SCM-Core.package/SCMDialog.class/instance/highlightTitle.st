ui
highlightTitle

	self isValid
		ifFalse: [self titleColor: Color paleRed.
				self titleTextColor: Color black]
		ifTrue: [self titleColor: self defaultColor.
				self titleTextColor: self defaultTextColor]