initialize-release
initialize

	super initialize.
	numberOfDays := 10.

	self createDaysCollection: numberOfDays.
