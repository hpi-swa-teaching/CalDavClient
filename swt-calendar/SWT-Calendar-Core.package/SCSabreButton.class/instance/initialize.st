as yet unclassified
initialize
	
	super initialize.
	self text: 'Connect to NextCloud'.
	self color: Color blue.	
	self when: #clicked send: #openDialog to: self. 