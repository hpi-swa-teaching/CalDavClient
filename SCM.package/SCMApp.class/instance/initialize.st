as yet unclassified
initialize

	super initialize.
	
	self dockingBar: SCMDockingBar new.
	self addMorph: self dockingBar.
	
	self view: SCMAgenda new.
	self addMorphBack: self view.
	
	self extent: 500 @ 500.
	
	self layoutPolicy: TableLayout new.
	
	self openInWindowLabeled: 'SCAM'.
	
	self owner color: Color orange.
	self  owner clipSubmorphs: true.