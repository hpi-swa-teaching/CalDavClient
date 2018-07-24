testing
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
	self assert: (addDialog titleTextColor = addDialog defaultTextColor)