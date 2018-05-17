accessing
begin
	| beginDateAndTime |
	beginDateAndTime := DateAndTime year: (self beginYear) month: (self beginMonth) day: (self beginDay) hour: (self beginHour) minute: (self beginMinute).
	 ^ beginDateAndTime 