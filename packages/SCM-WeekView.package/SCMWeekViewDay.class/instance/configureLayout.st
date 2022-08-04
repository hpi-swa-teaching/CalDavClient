initialization
configureLayout

	self
		layoutPolicy: TableLayout new;
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	cellPositioning: #center;
	   	listCentering: #top;
		listDirection: #topToBottom;
	  	wrapCentering: #top;
	  	wrapDirection: #none;
	  	color: Color white;
		borderColor: Color black;
	  	borderWidth: 2;
		layoutInset: 3@3