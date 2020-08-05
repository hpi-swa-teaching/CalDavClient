initialize-release
initialize

	super initialize.
	self dayList: ''.
	self text: 'Refresh Appointments'.
	self color: Color green dansDarker dansDarker darker.
	self when: #clicked send: #refreshFetch to: self.