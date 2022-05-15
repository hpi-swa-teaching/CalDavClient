initialization
initialize

super initialize.

self layoutPolicy: TableLayout new;
	vResizing: #spaceFill;
 	hResizing: #spaceFill;
  	color: Color blue;
  	borderWidth: 1;
  	borderColor: (Color r: 0.645 g: 0.774 b: 0.613);
	cellInset: 10;
  	cellPositioning: #topLeft;
   	listCentering: #center;
  	wrapCentering: #topLeft;
  	wrapDirection: #none;
  	listDirection: #topToBottom;
  	layoutInset: 5@5;
	extent: 10@20;
	clipSubmorphs: true.