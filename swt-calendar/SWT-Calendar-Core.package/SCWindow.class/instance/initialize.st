initialize-release
initialize

	| buttonListItem calendar dayList |

	SCSabreCalDavClient establishedConnection ~~ true
		ifTrue: [SCConnectToSabreButton SabreClientSetNil].

	super initialize.
	self setWindowStyles.

	dayList := SCDayList new.
	calendar := SCCalDavCalendar new.
	dayList calendar: calendar.
	dayList initialize.
	calendar dayList: dayList.

	connectToSabreButton := SCConnectToSabreButton new withLayout.

	newAppointmentButton := self createButton: SCAppointmentButton with: calendar and: dayList.
	fetchFromSabreButton := self createButton: SCFetchFromSabreButton with: calendar and: dayList.

	buttonListItem := self createButtonListItem.

	self add: buttonListItem.
	self addAll: dayList.

	fetchFromSabreButton refreshFetch.