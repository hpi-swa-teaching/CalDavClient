initialize-release
initialize

	| connectToSabreButton fetchFromSabreButton newAppointmentButton buttonListItem |
	SCSabreCalDavClient establishedConnection ~~ true
		ifTrue: [SCConnectToSabreButton SabreClientSetNil].

	super initialize.
	self setWindowStyles.

	self dayList: SCDayList new.
	self calendar: SCCalDavCalendar new.
	dayList calendar: calendar.
	dayList initialize.
	calendar dayList:  dayList.

	connectToSabreButton:=(SCConnectToSabreButton new withLayout).

	newAppointmentButton:=(self createButton: SCAppointmentButton).
	fetchFromSabreButton:=(self createButton: SCFetchFromSabreButton).

	buttonListItem:=(self createButtonListItem: connectToSabreButton with: fetchFromSabreButton and: newAppointmentButton).

	self add: buttonListItem.
	self addAll: dayList.

	fetchFromSabreButton refreshFetch.