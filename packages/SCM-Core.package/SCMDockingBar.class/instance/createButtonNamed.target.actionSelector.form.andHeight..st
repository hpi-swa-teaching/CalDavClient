initialization
createButtonNamed: aSymbol target: anObject actionSelector: anotherSymbol form: aForm andHeight: aNumber

	| button |
	
	button := SCMButton
		target: anObject
		actionSelector: anotherSymbol
		form: aForm
		andHeight: aNumber.
	self buttons at: aSymbol ifAbsentPut: button.
	self addMorphBack: button