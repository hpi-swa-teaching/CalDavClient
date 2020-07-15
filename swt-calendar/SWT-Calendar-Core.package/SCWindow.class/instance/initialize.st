as yet unclassified
initialize
|fetchFromGoogleButton newAppointmentButton dayListItem buttonListItem|

((SCGoogleCalDavClient establishedConnection) isNil  or: [SCGoogleCalDavClient establishedConnection < 0 ])
		ifTrue: [SCGoogleCalDavClient establishedConnection: 0.
				SCGoogleButton GoogleClientSetNil.
				SCGoogleCalDavClient calendarID: nil].
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
buttonListItem add: SCGoogleButton new withLayout.
newAppointmentButton := SCAppointmentButton new withLayout.
newAppointmentButton dayList: dayList.
buttonListItem add: newAppointmentButton.
fetchFromGoogleButton := SCFetchFromGoogleButton new withLayout.
fetchFromGoogleButton dayList: dayList.
buttonListItem add: fetchFromGoogleButton.
self add: buttonListItem.

dayListItem := PHListGroupItem new.

"fügt eine 10-tätige Liste ein"

self addAll: dayList.
self refreshOnStartup.