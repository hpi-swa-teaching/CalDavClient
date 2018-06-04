as yet unclassified
testTitleHighlighting

	addDialog event: self demoEvent.
	addDialog eventTitle: ''.
	addDialog saveEvent.
	self assert: addDialog titleColor equals: Color paleRed.
	
	
	editDialog event: self demoEvent.
	editDialog eventTitle: ''.
	editDialog saveEvent.
	self assert: editDialog titleColor equals: Color paleRed