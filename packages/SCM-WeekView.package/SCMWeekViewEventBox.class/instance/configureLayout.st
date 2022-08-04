initialization
configureLayout

	self
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		cellPositioning: #topLeft;
	  	listCentering: #center;
		listDirection: #topToBottom;
		wrapCentering: #topLeft;
	  	wrapDirection: #none;
	  	color: Color white;
	  	borderWidth: 2;
		cellInset: 1