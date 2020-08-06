creation
filterDateAndTime

	| filter |
	
	filter := SCFilter new.
	filter appointmentDialog: self.
	startDay := filter filterDay: startDay.
	startDay = false ifTrue:[^false].
	startMonth := (filter convertMonth: startMonth).
	startMonth= false ifTrue:[^false].
	startYear := filter filterYear: startYear.
	startYear = false ifTrue:[^false].
	startHour := filter filterHour: startHour.
	startHour = false ifTrue:[^false].
	startMinute := filter filterMinute: startMinute.
	startMinute = false ifTrue:[^false].