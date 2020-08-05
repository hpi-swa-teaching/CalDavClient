initialize-release
initialize
	|fetchFromSabreButton newAppointmentButton connectToSabreButton buttonListItem calendar|

	"check if first time use or false status of stablished connection --> resets connection"
	SCSabreCalDavClient establishedConnection ~~ true
		ifTrue: [SCConnectToSabreButton SabreClientSetNil].

	super initialize.
	self withLayout.
	self styleContext addClass: #window.
	self addStyleClass: #withPadding.
	self color: Color gray;
		vertical:  true.
	self extent: 50@200.

	dayList:=SCDayList new.
	calendar:= SCCalDavCalendar new.
	dayList calendar: calendar.
	dayList initialize.
	calendar dayList: dayList.

	connectToSabreButton := SCConnectToSabreButton new withLayout.
	SCConnectToSabreButton sabreClient ifNil:[connectToSabreButton openDialog.].

	newAppointmentButton := SCAppointmentButton new withLayout.
	newAppointmentButton dayList: dayList.
	newAppointmentButton calendar: calendar.

	fetchFromSabreButton := SCFetchFromSabreButton new withLayout.
	fetchFromSabreButton dayList: dayList.
	fetchFromSabreButton calendar: calendar.

	buttonListItem := PHListGroupItem new.
	buttonListItem vertical: false.
	buttonListItem add: connectToSabreButton.
	buttonListItem add: newAppointmentButton.
	buttonListItem add: fetchFromSabreButton.

	self add: buttonListItem.
	self addAll: dayList.

	"auto refresh on startup"
	fetchFromSabreButton refreshFetch.