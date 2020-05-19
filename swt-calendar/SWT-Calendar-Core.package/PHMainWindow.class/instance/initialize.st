as yet unclassified
initialize
	"initializes main window"

	| button |
	super initialize.
	self minSize: 200@200.
	self color: Color white.
	button := PHGoogleButton new.
	self addMorphBack: button.