initialization
initialize

	super initialize.
	self color: Color red.
	self
		layoutPolicy: TableLayout new;
		vResizing: #rigid;
	 	hResizing: #spaceFill;
	  	color: Color yellow;
	  	borderWidth: 0;
		cellInset: 5;
	  	cellPositioning: #topLeft;
	   	listCentering: #topLeft;
	  	wrapCentering: #center;
	  	wrapDirection: #none;
	  	listDirection: #leftToRight;
	  	layoutInset: 2 @ 2.
	
	self createEventButton.