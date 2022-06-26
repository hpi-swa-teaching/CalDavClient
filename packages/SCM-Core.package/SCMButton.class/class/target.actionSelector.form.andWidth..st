initialization
target: anObject actionSelector: aStringOrSymbol form: aForm andWidth: aWidth

	| scaledForm |
	
	scaledForm := (aForm scaledToWidth: aWidth).
	^ self new
			target: anObject;
			actionSelector: aStringOrSymbol;
			buttonForm: scaledForm;
			image: scaledForm;
			yourself