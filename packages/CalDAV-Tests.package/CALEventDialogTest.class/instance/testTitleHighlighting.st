as yet unclassified
testTitleHighlighting

	addDialog event: self demoEvent.
	addDialog eventTitle: ''.
	addDialog saveEvent.
	self assert: addDialog titleColor = Color paleRed.
	self assert: addDialog titleTextColor = Color black.
	addDialog eventTitle: 't'.
	addDialog event end: self demoEvent begin.
	addDialog saveEvent.
	self assert: addDialog titleColor ~= Color paleRed.
	self assert: (addDialog titleTextColor = addDialog defaultTextColor). 
	
	
	editDialog event: self demoEvent.
	editDialog eventTitle: ''.
	editDialog saveEvent.
	self assert: editDialog titleColor equals: Color paleRed.
	self assert: addDialog titleTextColor equals: Color black