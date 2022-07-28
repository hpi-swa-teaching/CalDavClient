initialization
openInScrollPane

	| s |
	s := ScrollPane new
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
		yourself.
	s scroller 
		addMorph: self;
		layoutPolicy: TableLayout new.
	s vScrollBar
		color: Color white;
		sliderColor: Color gray..
	"s vScrollBar
		color: Color red;
		sliderColor: Color green."
	^ s
	