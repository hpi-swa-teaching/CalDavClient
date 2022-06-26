initialization
configureLayout

	self
	  	color: self defaultFillColor;
		borderWidth: self defaultBorderWidth;
		borderColor: Color black;
		layoutPolicy: TableLayout new;
	 	layoutInset: self defaultLayoutInset;
		configureResizingAndCentering
		