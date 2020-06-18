as yet unclassified
initialize

	super initialize.

	self title: 'New Appointment...'.
	
	self titleArea: (PHTextAreaWithLabel new withPadding; text: 'Title:').
	self startTimeArea: (PHTextAreaWithLabel new withPadding; text: 'Start:').
	self endTimeArea: (PHTextAreaWithLabel new withPadding; text: 'End:').
	
	self content: (titleArea).
	self content: (PHLabel new withPadding; text: 'Date:').
	self content: (PHButton new withPadding; text: 'Select Date...'; when: #clicked send: #openDateDialog to: self).
	self content: (startTimeArea).
	self content: (endTimeArea).
	self content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #saveData to: self).
	
	self openFor: self.