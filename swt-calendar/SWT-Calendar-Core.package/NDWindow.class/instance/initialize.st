as yet unclassified
initialize

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
self addAll: NDDayList new initialize.
self add: NDGoogleButton new withLayout.