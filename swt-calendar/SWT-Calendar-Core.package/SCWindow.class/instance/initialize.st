as yet unclassified
initialize
|fetchFromSabreButton newAppointmentButton sabreButton dayListItem buttonListItem|

SCSabreCalDavClient establishedConnection ~~ true
ifTrue: [SCSabreButton SabreClientSetNil].

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

dayList:=SCDayList new initialize.

buttonListItem := PHListGroupItem new.
buttonListItem vertical: false.
sabreButton:=SCSabreButton new withLayout.
buttonListItem add: sabreButton.
newAppointmentButton := SCAppointmentButton new withLayout.
newAppointmentButton dayList: dayList.
buttonListItem add: newAppointmentButton.
fetchFromSabreButton := SCFetchFromSabreButton new withLayout.
fetchFromSabreButton dayList: dayList.
buttonListItem add: fetchFromSabreButton.
self add: buttonListItem.

dayListItem := PHListGroupItem new.

"fügt eine 10-tätige Liste ein"

self addAll: dayList.
SCSabreButton sabreClient ifNil:[sabreButton openDialog.].
SCSabreCalDavClient establishedConnection = true
ifTrue: self refreshOnStartup.