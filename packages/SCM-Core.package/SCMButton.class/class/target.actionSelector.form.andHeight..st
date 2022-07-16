initialization
target: anObject actionSelector: aStringOrSymbol form: aForm andHeight: aNumber

	| scaledForm |
	
	scaledForm := (aForm scaledToHeight: aNumber).
	^ self new
			target: anObject;
			actionSelector: aStringOrSymbol;
			buttonForm: scaledForm;
			image: scaledForm;
			yourself