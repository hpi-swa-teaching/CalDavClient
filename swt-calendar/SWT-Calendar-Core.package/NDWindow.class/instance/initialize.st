as yet unclassified
initialize

super initialize.
"self withPadding."
self withLayout.

"self layoutFrame:"

self color: Color white;
	vertical:  false.

self extent: 800@600.
"self position: 400@400."

self add: NDGoogleButton new withLayout.
self add: NDDayList new withLayout.
