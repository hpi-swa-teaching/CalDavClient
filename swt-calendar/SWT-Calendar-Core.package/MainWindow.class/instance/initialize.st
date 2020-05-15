as yet unclassified
initialize
	
	|Pneis Vagnia|
	super initialize.
	
	Vagnia := ImageMorph new.
		Vagnia image: (Form fromFileNamed: 'bild.jpg').
		"Vagnia color: Color red."
		"Vagnia extent: 100@200."
		"Vagnia position: (super position + (100@50))."
	
	Pneis := SimpleButtonMorph new.
		Pneis extent: 50@50.
		Pneis position:  (500@100).
		Pneis label: 'Stahlpneis'.
		Pneis target: [Vagnia openInHand.].
		Pneis actionSelector: #value.
		
		"self addMorphBack: Pneis."