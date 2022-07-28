accessing
selectedDate: aDate
"whenever date changes view must be reloaded"
	selectedDate := aDate.
	self reload