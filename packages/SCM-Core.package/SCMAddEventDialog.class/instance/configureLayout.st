initialization
configureLayout

	self 
		extent: 300 @ 700;
		openInWindowLabeled: 'Create Event';
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		listCentering: #topLeft;
		wrapCentering: #center;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		color: Color white;
		layoutInset: 10 @ 10;
		cellInset: 4 @ 4.