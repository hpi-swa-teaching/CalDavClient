initialization
configureLayout
 
	self
		layoutPolicy: TableLayout new;
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	color: Color white;
	  	borderWidth: self defaultBorderWidth;
	  	cellPositioning: #topLeft;
	   	listCentering: #center;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
	  	listDirection: #topToBottom;
		clipSubmorphs: true