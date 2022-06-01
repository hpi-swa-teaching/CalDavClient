as yet unclassified
initialize

super initialize.

self layoutPolicy: TableLayout new;
	vResizing: #spaceFill;
 	hResizing: #spaceFill;
  	color: Color white;
  	borderWidth: 0;
	cellInset: 10;
  	cellPositioning: #topLeft;
   	listCentering: #center;
  	wrapCentering: #topLeft;
  	wrapDirection: #none;
  	listDirection: #leftToRight;
  	layoutInset: 5@5;
	extent: 2000@835;
	clipSubmorphs: true.

self createDays.
