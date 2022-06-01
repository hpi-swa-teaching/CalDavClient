initialization
initialize

	"plz only call with createWith..."
	
	super initialize.
	self color: Color red.
	self
		layoutPolicy: TableLayout new;
		vResizing: #rigid;
	 	hResizing: #spaceFill;
	  	color: (Color r: 0 g: 143 b: 245 range: 255) ;
	  	borderWidth: 0;
		cellInset: 5;
	  	cellPositioning: #topLeft;
	   	listCentering: #topLeft;
	  	wrapCentering: #center;
	  	wrapDirection: #none;
	  	listDirection: #leftToRight;
	  	layoutInset: 2 @ 2.
