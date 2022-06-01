initialization
initialize

super initialize.

self layoutPolicy: TableLayout new;
	vResizing: #spaceFill;
 	hResizing: #spaceFill;
  	color: (Color r: 0.839 g: 1 b: 0.806);
  	borderWidth: 0;
	cellInset: 5;
  	cellPositioning: #topLeft;
   	listCentering: #center;
  	wrapCentering: #topLeft;
  	wrapDirection: #none;
  	listDirection: #topToBottom;
  	layoutInset: 5@5;
	extent: 1000@800;
	clipSubmorphs: true.
	
self createDays.