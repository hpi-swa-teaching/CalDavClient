initialization
openInScrollPane

	| s |
	s := ScrollPane new
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
		adoptPaneColor: Color blue;
		yourself.
	s scroller 
		addMorph: self;
		layoutPolicy: TableLayout new.
	^ s
	