as yet unclassified
initialize
|fetchFromGoogleButton newAppointmentButton|
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

"fügt eine 10-tätige Liste ein"
dayList:=NDDayListCreator new initialize.
self addAll: dayList.
dayList window: self.
self add: NDGoogleButton new withLayout.
newAppointmentButton := NDAppointmentButton new withLayout.
newAppointmentButton dayList: dayList.
self add: newAppointmentButton.
fetchFromGoogleButton := NDFetchFromGoogleButton new withLayout.
fetchFromGoogleButton dayList: dayList.
self add: fetchFromGoogleButton.
"Transcript show: AppointmentDictionary."