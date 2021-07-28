toolbuilder
openDay: aDate for: anApp

	| quickView |
	
	aDate start: (aDate start offset: DateAndTime localOffset).
	quickView := CALQuickView new
		app: anApp;
		day: aDate;
		yourself.
	^ ToolBuilder default open: quickView