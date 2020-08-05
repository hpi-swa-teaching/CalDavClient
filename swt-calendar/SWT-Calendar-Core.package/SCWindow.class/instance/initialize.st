initialize-release
initialize

	| buttonListItem calendar |

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
	SCConnectToSabreButton sabreClient ifNil:[connectToSabreButton openDialog.].

	newAppointmentButton := self createButton: SCAppointmentButton.
	fetchFromSabreButton := self createButton: SCFetchFromSabreButton.

	buttonListItem := self createButtonListItem.

	self add: buttonListItem.
	self addAll: dayList.

	fetchFromSabreButton refreshFetch.