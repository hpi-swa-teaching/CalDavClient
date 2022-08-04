initialization
configureLayout

	self
		layoutPolicy: TableLayout new;
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	cellPositioning: #topLeft;
	   	listCentering: #center;
		listDirection: #leftToRight;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
		color: Color white;
		layoutInset: 5 @ 5;
		borderWidth: 0;
		cellInset: 5