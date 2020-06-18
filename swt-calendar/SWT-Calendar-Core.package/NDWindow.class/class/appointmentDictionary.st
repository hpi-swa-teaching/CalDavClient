accessing
appointmentDictionary
	^ AppointmentDictionary ifNil: [AppointmentDictionary:=NDAppointment new]