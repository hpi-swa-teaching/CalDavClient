as yet unclassified
openDay: aDate for: anApp

	| dayView |
	
	aDate start: (aDate start offset: DateAndTime localOffset).
	dayView := CALDayView new
		parent: anApp;
		day: aDate.
	
	^ToolBuilder default open: dayView