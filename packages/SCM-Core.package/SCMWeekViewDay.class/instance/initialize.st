as yet unclassified
initialize

super initialize.

self layoutPolicy: TableLayout new;
	vResizing: #spaceFill;
 	hResizing: #spaceFill;
  	color: Color white;
  	borderWidth: 2;
  	borderColor: Color black;
	cellInset: 5;
  	cellPositioning: #center;
   	listCentering: #top;
  	wrapCentering: #top;
  	wrapDirection: #none;
  	listDirection: #topToBottom;
  	layoutInset: 5@5;
	clipSubmorphs: true.