initialization
createWithEvents: aSortedCollection andSelectedDate: aDate

	| s |
	s := ScrollPane new
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
		adoptPaneColor: Color blue;
		yourself.
	s scroller addMorph: (self new
		loadViewWithEmptyDays: aSortedCollection andSelectedDate: aDate;
		yourself).
	s scroller layoutPolicy: TableLayout new.
	^ s