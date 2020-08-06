initialize-release
initialize

	super initialize.
	self dayList: ''.
	self text: 'Refresh Appointments'.
	self color: Color moss.
	self when: #clicked send: #refreshFetch to: self.