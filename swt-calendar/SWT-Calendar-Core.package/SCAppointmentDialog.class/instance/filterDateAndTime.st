creation
filterDateAndTime

	| filter |
	
	filter := SCFilter new.
	filter appointmentDialog: self.
	startDay := filter filterDay: startDay.
	startDay ifFalse: [^false].
	startMonth := (filter convertMonth: startMonth).
	startMonth ifFalse: [^false].
	startYear := filter filterYear: startYear.
	startYear ifFalse: [^false].
	startHour := filter filterHour: startHour.
	startHour ifFalse: [^false].
	startMinute := filter filterMinute: startMinute.
	startMinute ifFalse: [^false].