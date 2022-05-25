as yet unclassified
createTextField: aString

	| textField |
	textField :=  TextFieldMorph new
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		color: Color white;
		contents: aString;
		yourself.
		
	^ textField