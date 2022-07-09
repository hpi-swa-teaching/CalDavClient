initialization
configureLayout

	self
		layoutPolicy: TableLayout new;
		vResizing: #shrinkWrap;
	 	hResizing: #rigid;
	  	color: Color white;
		width: 450;
	  	borderWidth: 2;
	  	borderColor: Color black;
		cellInset: 3;
	  	cellPositioning: #topLeft;
	   	listCentering: #topLeft;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
	  	listDirection: #leftToRight;
	  	layoutInset: 3 @ 3
