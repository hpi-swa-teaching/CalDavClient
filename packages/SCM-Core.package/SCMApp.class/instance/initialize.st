initialization
initialize

	super initialize.
	
	self dockingBar: (SCMDockingBar with: self).
	
	self addMorph: self dockingBar.
	
	self view: SCMAgenda new.
	self addMorphBack: self view.
	
	self layoutPolicy: TableLayout new.
	
	self window: (self openInWindowLabeled: 'SCAM').
	self window extent: 800 @ 1000.
	
	self owner clipSubmorphs: true