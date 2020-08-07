initialize-release
initialize

	super initialize.
	self date: Date today.
	dateLabel := PHLabel new
		minSize: 175@20.
	self add: dateLabel.
	events := OrderedCollection new.