as yet unclassified
openCalendarDialog

	| cal |
	cal := NDCalendarMorph new.
	cal appointmentButton: self.
	self selectedCalDate: (Date today) asString.
	cal position: 300@0.
	
	calDialog := PHDialog new.
	calDialog title: 'Choose Date...'.
	
	calDialog content: (cal).
	calDialog content: (PHButton new withPadding; text: 'OK').

	calDialog openFor: self.