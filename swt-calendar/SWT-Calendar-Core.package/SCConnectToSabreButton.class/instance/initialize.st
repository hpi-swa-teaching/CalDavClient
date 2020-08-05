as yet unclassified
initialize
	
	super initialize.
	SCSabreCalDavClient establishedConnection ~~ true
		ifTrue: [	self text: 'Connect to NextCloud'.]
		ifFalse: [self text: 'Connected to Nextcloud'.].
	self color: Color blue.
	self when: #clicked send: #openDialog to: self.
	