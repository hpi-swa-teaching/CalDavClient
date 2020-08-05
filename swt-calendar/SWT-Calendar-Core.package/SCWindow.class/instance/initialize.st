initialize-release
initialize

	SCSabreCalDavClient establishedConnection ~~ true
		ifTrue: [SCConnectToSabreButton SabreClientSetNil].

	super initialize.
	self setWindowStyles.

	self dayList: SCDayList new.
	self calendar: SCCalDavCalendar new.
	dayList calendar: calendar.
	dayList initialize.
	calendar dayList:  dayList.

	self connectToSabreButton: (SCConnectToSabreButton new withLayout).

	self newAppointmentButton: (self createButton: SCAppointmentButton with: calendar and: dayList).
	self fetchFromSabreButton: (self createButton: SCFetchFromSabreButton with: calendar and: dayList).

	self buttonListItem: self createButtonListItem.

	self add: buttonListItem.
	self addAll: dayList.

	fetchFromSabreButton refreshFetch.