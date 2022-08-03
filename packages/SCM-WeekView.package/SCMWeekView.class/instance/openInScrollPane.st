initialization
openInScrollPane

	| scrollPane |
	
	scrollPane := self createScrollPane.
	scrollPane scroller 
		addMorph: self;
		layoutPolicy: TableLayout new.
		
	^ scrollPane
	