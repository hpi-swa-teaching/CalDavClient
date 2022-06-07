accessing
initialize

	super initialize.
	self configureLayout.
	self extent: 500 @ 500.
	self loadView: self defaultView.