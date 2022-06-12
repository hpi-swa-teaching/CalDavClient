initialization
configureLayout
	
	self
		layoutPolicy: TableLayout new;
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	color: Color white;
	  	borderWidth: 2;
		cellInset: 1;
	  	cellPositioning: #topLeft;
	   	listCentering: #center;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
	  	listDirection: #topToBottom;
	  	layoutInset: 5 @ 5