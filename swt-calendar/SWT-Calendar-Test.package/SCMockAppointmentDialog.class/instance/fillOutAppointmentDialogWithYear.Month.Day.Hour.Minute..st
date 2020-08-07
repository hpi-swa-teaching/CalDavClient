mock
fillOutAppointmentDialogWithYear: aYear Month: aMonth Day: aDay Hour: aHour Minute: aMinute

	self startYearArea textArea text: aYear.
	self startMonthArea textArea text: aMonth.
	self startDayArea textArea text: aDay.
	self startHourArea text: aHour.
	self startMinuteArea text: aMinute.

	self setDateAndTime.

