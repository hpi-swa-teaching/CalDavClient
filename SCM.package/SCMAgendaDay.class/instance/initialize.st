initialization
initialize

super initialize.

self layoutPolicy: TableLayout new;
	vResizing: #spaceFill;
 	hResizing: #spaceFill;
  	color: Color white;
  	borderWidth: 2;
  	borderColor: Color black;
	cellInset: 5;
  	cellPositioning: #topLeft;
   	listCentering: #center;
  	wrapCentering: #topLeft;
  	wrapDirection: #none;
  	listDirection: #leftToRight;
  	layoutInset: 5@5;
	extent: 30@40;
	clipSubmorphs: true.