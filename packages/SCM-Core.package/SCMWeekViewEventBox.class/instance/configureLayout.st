as yet unclassified
configureLayout

	self
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
	  	color: Color white;
	  	borderWidth: 2;
	  	"borderColor: Color gray; --> for debugging"
		cellInset: 1;
	  	cellPositioning: #topLeft;
	   	listCentering: #center;
	  	wrapCentering: #topLeft;
	  	wrapDirection: #none;
	  	listDirection: #topToBottom.
