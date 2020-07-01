as yet unclassified
initialize

	super initialize.

	self title: 'New Appointment...'.
	
	self titleArea: (PHTextAreaWithLabel new withPadding; text: 'Title:').
	self startDayArea: (PHTextAreaWithLabel new withPadding; text: 'Enter Day:').
	self startMonthArea:  (PHTextAreaWithLabel new withPadding; text: 'Enter Month:').
	self startYearArea:  (PHTextAreaWithLabel new withPadding; text: 'Enter Year:').
	

	self content: (titleArea).
	self content: ((PHLabel new) text:'Enter Date(e.g. 20 June 1998):';pointSize: 25).
	self content: (startDayArea).
	self content: (startMonthArea).
	self content: (startYearArea).
	self content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #saveData to: self).
	
	self openFor: self.