as yet unclassified
initialize

	|fetchFromGoogleButton newAppointmentButton dayListItem buttonListItem|
	super initialize.
	"self withPadding."
	self withLayout.
	self styleContext addClass: #window.
	self addStyleClass: #withPadding.

	"self layoutFrame:"

	self color: Color gray;
		vertical:  true.
	self extent: 50@200.
	
	dayListItem := PHListGroupItem new.

	"fügt eine 10-tätige Liste ein"
	dayList:=NDDayListCreator new initialize.

	buttonListItem := PHListGroupItem new.
	buttonListItem vertical: false.
	buttonListItem add: NDGoogleButton new withLayout.
	newAppointmentButton := NDAppointmentButton new withLayout.
	newAppointmentButton dayList: dayList.
	buttonListItem add: newAppointmentButton.
	fetchFromGoogleButton := NDFetchFromGoogleButton new withLayout.
	fetchFromGoogleButton dayList: dayList.
	buttonListItem add: fetchFromGoogleButton.
	self add: buttonListItem.
	self addAll: dayList.