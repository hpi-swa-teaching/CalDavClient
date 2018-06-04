as yet unclassified
highlightTitle
	self event isTitleValid
		ifFalse: [ self titleColor: Color paleRed ]
		ifTrue: [ self titleColor: Color white ]