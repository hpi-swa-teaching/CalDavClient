displaying
openAppointmentDialog
	
	|dialog|
	
	dialog := SCAppointmentDialog new.
	dialog dayList: dayList.
	dialog openInHand.