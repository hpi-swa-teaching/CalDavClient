initialization
createButtonNamed: aSymbol target: anObject actionSelector: aStringOrSymbol

	| button |
	button := SCMButton target: anObject actionSelector: aStringOrSymbol.
	self widgets at: aSymbol ifAbsentPut: button.
	self addMorph: button