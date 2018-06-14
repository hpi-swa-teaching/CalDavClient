as yet unclassified
openDay: aDate for: anApp

	| weekView |
	
	aDate start: (aDate start offset: DateAndTime localOffset).
	weekView := CALWeekView new
		parent: anApp;
		day: aDate.
	
	^ToolBuilder default open: weekView