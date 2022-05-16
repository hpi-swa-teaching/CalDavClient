as yet unclassified
createTextField
	"comment stating purpose of message"

	| textField |
	textField :=  TextFieldMorph new
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		color: Color white.
		
	^ textField