actions
configureLayout
 
	self
		layoutPolicy: TableLayout new;
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	color: Color white;
	  	borderWidth: 0;
	  	cellPositioning: #topLeft;
	   	listCentering: #center;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
	  	listDirection: #topToBottom;
		clipSubmorphs: true