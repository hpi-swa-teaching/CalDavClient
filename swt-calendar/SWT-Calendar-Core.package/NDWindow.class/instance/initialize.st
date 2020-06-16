as yet unclassified
initialize
 | buttonToRefresh |
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
buttonToRefresh := PHButton new.
buttonToRefresh text: 'Refresh Appointments'.
buttonToRefresh color: Color red.
"buttonToRefresh when: #clicked send: #openDialog to: NDDayButton."

self add: buttonToRefresh withPadding.