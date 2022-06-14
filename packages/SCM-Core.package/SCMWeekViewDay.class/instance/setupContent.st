as yet unclassified
setupContent

	| text |
	
	text := TextMorph new
		contents: (date asString);
		height: 50.

	self addMorph: text.