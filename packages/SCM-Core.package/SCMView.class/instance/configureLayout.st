accessing
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
		extent: 2000@835;
		clipSubmorphs: true.