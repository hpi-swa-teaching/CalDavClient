as yet unclassified
initialize

	super initialize.

	self title: 'New Appointment...'.
	
	self titleArea: (PHTextAreaWithLabel new withPadding; text: 'Title:').

	self content: (titleArea).
	self content: (PHLabel new withPadding; text: 'Date:').
	self content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #saveData to: self).
	
	self openFor: self.