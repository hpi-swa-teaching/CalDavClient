initialize-release
initialize


	super initialize.
	
	self color: Color grape.
	self label text: 'New Appointment...'.
	self extent: 40@80.
	self size: 100@100.

	self when: #clicked send: #openAppointmentDialog to: self.
