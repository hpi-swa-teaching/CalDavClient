as yet unclassified
createBox
	"comment stating purpose of message"

	| box |
	box := RectangleMorph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #topLeft;
		wrapCentering: #topLeft;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		color: Color paleGreen;
		layoutInset: 10@10;
		cellInset: 4@4.
	
	^box