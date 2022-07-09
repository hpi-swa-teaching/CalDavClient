initialization
configureLayout

	self
		layoutPolicy: TableLayout new;
		vResizing: #shrinkWrap;
	 	hResizing: #spaceFill;
	  	color: Color white;
	  	borderWidth: 2;
	  	borderColor: Color black;
		cellInset: 3;
	  	cellPositioning: #topLeft;
	   	listCentering: #topLeft;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
	  	listDirection: #leftToRight;
	  	layoutInset: 3 @ 3
