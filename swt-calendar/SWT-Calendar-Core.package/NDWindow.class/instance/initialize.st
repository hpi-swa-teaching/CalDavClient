as yet unclassified
initialize
|fetchFromGoogleButton|
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
dayList:=NDDayList new initialize.
self addAll: dayList.
dayList window: self.
self add: NDGoogleButton new withLayout.
self add: NDAppointmentButton new withLayout.
fetchFromGoogleButton := NDFetchFromGoogleButton new withLayout.
fetchFromGoogleButton dayList: dayList.
self add: fetchFromGoogleButton.