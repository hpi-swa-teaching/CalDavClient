as yet unclassified
initialize

	super initialize.
	
	self 
		position: 10 @ 10;
		extent: 750 @ 500;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		listCentering: #topLeft;
		wrapCentering: #center;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		color: Color paleGreen;
		layoutInset: 10@10;
		cellInset: 4@4.
		
	self createForm.