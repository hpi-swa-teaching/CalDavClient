creation
filterDateAndTime

	| filter |
	
	filter := SCFilter new.
	filter appointmentDialog: self.
	startDay := filter filterDay: startDay.
	startDay = false ifTrue:[^nil].
	startMonth := (filter convertMonth: startMonth).
	startMonth= false ifTrue:[^nil].
	startYear := filter filterYear: startYear.
	startYear = false ifTrue:[^nil].
	startHour := filter filterHour: startHour.
	startHour = false ifTrue:[^nil].
	startMinute := filter filterMinute: startMinute.
	startMinute = false ifTrue:[^nil].