initialization
initialize

super initialize.

self layoutPolicy: TableLayout new;
	vResizing: #spaceFill;
 	hResizing: #spaceFill;
  	color: (Color r: 0.839 g: 1 b: 0.806);
  	borderWidth: 10;
  	borderColor: (Color r: 0.645 g: 0.774 b: 0.613);
	cellInset: 10;
  	cellPositioning: #topLeft;
   	listCentering: #center;
  	wrapCentering: #topLeft;
  	wrapDirection: #none;
  	listDirection: #topToBottom;
  	layoutInset: 5@5;
	extent: 1000@800;
	clipSubmorphs: true.
	
	self addMorphBack: (self createFormButton).
	
self createDays.