as yet unclassified
initialize

super initialize.

self layoutPolicy: TableLayout new;
	hResizing: #spaceFill;
  	color: Color white;
  	borderWidth: 2;
  	borderColor: Color gray;
	cellInset: 1;
  	cellPositioning: #topLeft;
   	listCentering: #center;
  	wrapCentering: #topLeft;
  	wrapDirection: #none;
  	listDirection: #topToBottom;
  	layoutInset: 5@5;
	clipSubmorphs: true.
