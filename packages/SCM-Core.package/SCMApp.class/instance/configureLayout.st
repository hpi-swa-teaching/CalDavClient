initialization
configureLayout

	self 
		layoutPolicy: TableLayout new;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		clipSubmorphs: true;
		extent: self defaultExtent
		