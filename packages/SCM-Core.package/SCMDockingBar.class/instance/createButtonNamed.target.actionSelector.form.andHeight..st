initialization
createButtonNamed: aSymbol target: anObject actionSelector: aStringOrSymbol form: aForm andHeight: aNumber

	| button |
	
	button := SCMButton target: anObject actionSelector: aStringOrSymbol form: aForm andHeight: aNumber.
	self widgets at: aSymbol ifAbsentPut: button.
	self addMorphBack: button