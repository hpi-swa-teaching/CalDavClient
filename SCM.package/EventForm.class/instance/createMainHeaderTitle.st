as yet unclassified
createMainHeaderTitle
	"creates the Title of the Form"

	| headerTitle |
	headerTitle := StringMorph new
		contents: 'New Entry';
		width: 200;
		color: Color black.
		
	^ headerTitle