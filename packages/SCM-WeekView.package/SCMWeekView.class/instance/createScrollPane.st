initialization
createScrollPane

	| scrollPane |
	
	scrollPane := ScrollPane new
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
		showHScrollBarOnlyWhenNeeded;
		yourself.
	self setColorsForScrollPane: scrollPane.
	
	^ scrollPane