initialization
configureLayout
	
	self
		layoutPolicy: TableLayout new;
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	cellPositioning: #topLeft;
	   	listCentering: #center;
		listDirection: #topToBottom;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
		color: Color white;
	  	borderWidth: 2;
		cellInset: 1;
	  	layoutInset: 0 @ 0