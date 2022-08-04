initialization
createScrollPane

	| scrollPane |
	
	scrollPane := ScrollPane new
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
		yourself.
		
	scrollPane vScrollBar
		color: Color white;
		sliderColor: Color gray.
	
	^ scrollPane