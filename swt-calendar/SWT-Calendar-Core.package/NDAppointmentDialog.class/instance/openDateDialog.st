as yet unclassified
openDateDialog

	| cal dialog |
	cal := NDCalendarMorph new.
	dialog := PHDialog new.
	
	cal position: (dialog position + (300@0)).
	cal appointmentButton: self.
	
	self selectedCalDate: (cal date) asString.
	
	dialog content: (PHLabel new text: 'Date:'; position: 0@0).
	
	dialog content: (cal).

	dialog content: (PHLabel new text: (selectedCalDate asString)).
	
	dialog content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #accept: to: dialog with: nil).
	
	dialog openFor: self.
	
	
	