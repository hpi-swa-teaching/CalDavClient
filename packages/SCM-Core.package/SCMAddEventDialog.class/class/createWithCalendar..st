as yet unclassified
createWithCalendar: aSCMCalendar
	
	| event |
	event := (self new)
		calendar: aSCMCalendar;
		openInWindowLabeled: 'Create Event';
		yourself.
	event owner setWindowColor: Color blue.
	^ event