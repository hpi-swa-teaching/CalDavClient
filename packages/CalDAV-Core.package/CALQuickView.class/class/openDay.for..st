as yet unclassified
openDay: aDate for: anApp

	| quickView |
	
	aDate start: (aDate start offset: DateAndTime localOffset).
	quickView := CALQuickView new
		app: anApp;
		date: aDate.
	
	^ ToolBuilder default open: quickView