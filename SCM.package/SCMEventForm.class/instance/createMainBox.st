as yet unclassified
createMainBox
	"comment stating purpose of message"

	| main header headerTitle|
	main := MenuMorph new
		color: Color transparent;
		position: 10@10;
		extent: 750@500;
		name: 'background';
		openInWorld;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		listCentering: #topLeft;
		wrapCentering: #center.
		
		header := self createMainHeader.
		headerTitle := self createMainHeaderTitle.
		
		main addMorph: header.
		header addMorph: headerTitle.
		
	^ main