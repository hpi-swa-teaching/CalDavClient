initialization
configureLayout

	self layoutPolicy: TableLayout new;
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	color: Color white;
	  	borderWidth: 2;
	  	borderColor: Color black;
		cellInset: 5;
	  	cellPositioning: #topLeft;
	   	listCentering: #center;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
	  	listDirection: #leftToRight;
	  	layoutInset: 5@5
