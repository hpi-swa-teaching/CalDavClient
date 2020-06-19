as yet unclassified
initialize

	super initialize.
	self dayList: ''.
	self text: 'Refresh Appointments'.
	self color: Color red.
	self when: #clicked send: #refreshFetch to: self.