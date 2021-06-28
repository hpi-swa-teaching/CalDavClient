accessing
eventNames

	 ^ self selectedEvents collect: [:each | each title, '   ', each dateAndTimeString]