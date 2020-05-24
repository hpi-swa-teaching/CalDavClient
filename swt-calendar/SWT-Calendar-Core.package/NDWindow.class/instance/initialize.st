as yet unclassified
initialize
|actualDay|
super initialize.
"self withPadding."
self withLayout.

"self layoutFrame:"

self color: Color gray;
	vertical:  true.

self extent: 50@200.
"self position: 400@400."
0 to: 9 do:[:x| actualDay:= NDDayButton new.
actualDay text: (Date today + x days) asString.
self add: actualDay withLayout.].
self add: NDGoogleButton new withLayout.
