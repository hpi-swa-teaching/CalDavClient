initialization
initialize

	"plz only call with createWith..."
	
	super initialize.
	self color: Color red.
	self
		layoutPolicy: TableLayout new;
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	color: Color yellow;
	  	borderWidth: 0;
		cellInset: 10;
	  	cellPositioning: #topLeft;
	   	listCentering: #topLeft;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
	  	listDirection: #leftToRight;
	  	layoutInset: 2 @ 2