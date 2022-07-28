as yet unclassified
openInScrollPane


	| s |
	s := ScrollPane new
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
		showHScrollBarOnlyWhenNeeded;
		yourself.
	s scroller 
		addMorph: self;
		layoutPolicy: TableLayout new.
	s vScrollBar
		color: Color white;
		sliderColor: Color gray.
	s hScrollBar
		color: Color white;
		sliderColor: Color gray..
	^ s
	