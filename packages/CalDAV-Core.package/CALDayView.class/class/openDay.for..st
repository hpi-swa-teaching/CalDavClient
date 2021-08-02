initialize
openDay: aDate for: anApp

	| dayView |
	
	aDate start: (aDate start offset: DateAndTime localOffset).
	dayView := CALDayView new
		app: anApp;
		day: aDate;
		yourself.
	^ ToolBuilder default open: dayView