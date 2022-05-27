initialization
initialize

	super initialize.
	
	self dockingBar: (SCMDockingBar with: self).
	
	self addMorph: self dockingBar.
	
	self view: SCMAgenda new.
	self addMorphBack: self view.
	
	self extent: 2000@835.
	
	self layoutPolicy: TableLayout new.
	
	self window: (self openInWindowLabeled: 'SCAM').
	
	self owner clipSubmorphs: true