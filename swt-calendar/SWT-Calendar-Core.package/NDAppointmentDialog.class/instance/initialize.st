as yet unclassified
initialize

	| titleLabel |

	super initialize.

	self title: 'New Appointment...'.
	
	titleLabel := ((PHLabel new) text:'Enter Title:'; pointSize: 25).
	self titleArea: (((PHTextArea new) withPadding)).
	
	self startDayArea: (PHTextAreaWithLabel new withPadding; text: 'Enter Day:').
	self startMonthArea:  (PHTextAreaWithLabel new withPadding; text: 'Enter Month:').
	self startYearArea:  (PHTextAreaWithLabel new withPadding; text: 'Enter Year:').
	
	self content: titleLabel.
	self content: (titleArea).
	self content: ((PHLabel new) text:'Enter Date(e.g. 5 July 1984): ';pointSize: 25).
	self content: (startDayArea).
	self content: (startMonthArea).
	self content: (startYearArea).
	self content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #saveData to: self).
	
	self openFor: self.