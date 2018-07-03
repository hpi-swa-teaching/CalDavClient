as yet unclassified
setUp

	dayView := CALDayView new.
	dayView when: #dateChanged send: #dateChanged: to: self