initialization
createButtonNamed: aSymbol target: anObject actionSelector: aStringOrSymbol form: aForm andWidth: aWidth

	| button |
	
	button := SCMButton target: anObject actionSelector: aStringOrSymbol form: aForm andWidth: aWidth.
	self widgets at: aSymbol ifAbsentPut: button.
	self addMorphBack: button