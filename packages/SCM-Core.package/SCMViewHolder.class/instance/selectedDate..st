accessing
selectedDate: aDate
"whenever date changes view must be reloaded"
	self basicSelectedDate: aDate.
	self reload