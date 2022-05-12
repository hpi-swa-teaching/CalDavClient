as yet unclassified
createMainHeader
	"comment stating purpose of message"

	| header |
	header := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		listCentering: #center;
		wrapCentering: #center;
		hResizing: #spaceFill;
		color: Color paleGreen;
		height: 40.
		
	^ header