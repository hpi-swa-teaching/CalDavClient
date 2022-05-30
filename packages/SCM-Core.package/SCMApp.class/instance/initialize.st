initialization
initialize

	super initialize.
	
	self dockingBar: SCMDockingBar new;
		addMorph: self dockingBar;
		view: SCMAgenda new;
		addMorphBack: self view.
	
	self extent: 500 @ 500;
		layoutPolicy: TableLayout new;
		window: (self openInWindowLabeled: 'SCAM').
		
	self owner clipSubmorphs: true