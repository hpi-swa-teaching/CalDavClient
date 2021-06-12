initialize-release
openDay: aDate for: anApp

	| quickView quickViewMorph |
	
	aDate start: (aDate start offset: DateAndTime localOffset).
	quickView := CALQuickView new
		app: anApp;
		date: aDate;
		yourself.
	quickViewMorph := ToolBuilder default open: quickView.
	quickViewMorph position: (quickViewMorph world right - quickViewMorph width) @ 0.
	^ quickViewMorph