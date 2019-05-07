running
setUp

	self dayView: CALDayView new.
	self dayView when: #dateChanged send: #dateChanged: to: self