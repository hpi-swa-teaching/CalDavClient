as yet unclassified
openInScrollPane

	| s |
	s := ScrollPane new
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
		adoptPaneColor: Color blue;
		showHScrollBarOnlyWhenNeeded;
		yourself.
	s scroller 
		addMorph: self;
		layoutPolicy: TableLayout new.
	"s vScrollBar
		color: Color red;
		sliderColor: Color green."
	^ s
	