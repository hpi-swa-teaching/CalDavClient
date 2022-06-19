initialization
configureLayout

	self
	  	color: (Color r: 0 g: 143 b: 245 range: 255);
		borderWidth: 0;
		borderColor: Color black;
		
		layoutPolicy: TableLayout new;
	 	layoutInset: 2 @ 2;
		vResizing: #rigid;
	 	hResizing: #spaceFill;

	   	listCentering: #topLeft;
		listDirection: #leftToRight;
	  	wrapCentering: #center;
	  	wrapDirection: #none;
		cellPositioning: #topLeft;
		cellInset: 5
		