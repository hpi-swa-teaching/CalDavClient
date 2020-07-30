initialize-release
initialize

	super initialize.

	self title: 'New Appointment...'.
	self setInputFields.
	self addContent.
	self openFor: self.