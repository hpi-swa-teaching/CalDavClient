initialization
configureResizingAndCentering

	self
		vResizing: #rigid;
	 	hResizing: #spaceFill;
	   	listCentering: #topLeft;
		listDirection: #leftToRight;
	  	wrapCentering: #center;
	  	wrapDirection: #none;
		cellPositioning: #topLeft;
		cellInset: self defaultCellInset
		