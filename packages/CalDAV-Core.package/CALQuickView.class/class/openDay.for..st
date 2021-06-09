initialize-release
openDay: aDate for: anApp

	| quickView |
	
	aDate start: (aDate start offset: DateAndTime localOffset).
	quickView := CALQuickView new
		app: anApp;
		date: aDate;
		yourself.
	^ ToolBuilder default open: quickView