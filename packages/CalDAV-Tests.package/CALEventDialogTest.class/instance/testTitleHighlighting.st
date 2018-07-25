testing
testTitleHighlighting

	self addDialog 
		event: self demoEvent;
		eventTitle: '';
		saveEvent.
	self 
		assert: self addDialog titleColor = Color paleRed;
		assert: self addDialog titleTextColor = Color black.
	self addDialog eventTitle: 't'.
	self addDialog event end: self demoEvent begin.
	self addDialog saveEvent.
	self 
		assert: self addDialog titleColor ~= Color paleRed;
		assert: (self addDialog titleTextColor = self addDialog defaultTextColor)