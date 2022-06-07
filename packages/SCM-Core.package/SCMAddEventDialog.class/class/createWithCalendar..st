as yet unclassified
createWithCalendar: aSCMCalendar
	
	|e|
	e := (self new)
		calendar: aSCMCalendar;
		openInWindowLabeled: 'Create Event';
		yourself.
	e owner setWindowColor: Color blue.
	^ e.