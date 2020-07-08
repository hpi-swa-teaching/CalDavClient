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
"self position: 400@400."

dayList:=NDDayList new initialize.

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

dayListItem := PHListGroupItem new.

"fügt eine 10-tätige Liste ein"

self addAll: dayList.
