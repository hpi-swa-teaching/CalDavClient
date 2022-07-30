initialization
target: anObject actionSelector: aSymbol form: aForm andHeight: aNumber

	| scaledForm |
	
	scaledForm := aForm scaledToHeight: aNumber.
	^ self new
			target: anObject;
			actionSelector: aSymbol;
			buttonForm: scaledForm;
			image: scaledForm;
			yourself