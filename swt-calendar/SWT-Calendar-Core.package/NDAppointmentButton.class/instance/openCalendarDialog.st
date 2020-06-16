as yet unclassified
openCalendarDialog

	| dialog cal |
	cal := CalendarMorph new.
	cal position: 300@0.
	self selectedCalDate: (cal date) asString.
	
	dialog := PHDialog new.
	dialog title: 'Choose Date...'.
	
	dialog content: (PHLabel new text: 'Date:'; position: 0@0).
	dialog content: (cal).
	dialog content: (PHLabel new text: self selectedCalDate).
	dialog content: (PHButton new withPadding; text: 'OK').

	dialog openFor: self.