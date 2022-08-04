initialization
configureLayout

	self
		layoutPolicy: TableLayout new;
		vResizing: #shrinkWrap;
	 	hResizing: #spaceFill;
	  	cellPositioning: #topLeft;
	   	listCentering: #topLeft;
		listDirection: #leftToRight;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
		color: Color white;
		borderColor: Color black;
		borderWidth: 2;
		cellInset: 3;
	  	layoutInset: 3 @ 3