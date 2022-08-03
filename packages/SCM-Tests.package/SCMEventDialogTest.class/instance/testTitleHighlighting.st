testing
testTitleHighlighting

	self addDialog 
		load: self demoEvent;
		title: '';
		saveEvent.
	self 
		assert: self addDialog titleColor = Color paleRed;
		assert: self addDialog titleTextColor = Color black.
	self addDialog
		title: 't';
		end: self demoEvent begin;
		saveEvent.
	self
		assert: self addDialog titleColor ~= Color paleRed;
		assert: (self addDialog titleTextColor = self addDialog defaultTextColor)