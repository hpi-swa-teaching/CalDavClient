initialization
initialize

super initialize.

self layoutPolicy: TableLayout new;
	vResizing: #spaceFill;
 	hResizing: #spaceFill;
  	color: Color white;
  	borderWidth: 1;
  	borderColor: (Color r: 0.645 g: 0.774 b: 0.613);
	cellInset: 5;
  	cellPositioning: #topLeft;
   	listCentering: #center;
  	wrapCentering: #topLeft;
  	wrapDirection: #none;
  	listDirection: #leftToRight;
  	layoutInset: 5@5;
	extent: 30@40;
	clipSubmorphs: true.