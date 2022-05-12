as yet unclassified
createMainHeaderTitle
	"comment stating purpose of message"

	| headerTitle |
	headerTitle := StringMorph new
		contents: 'New Entry';
		width: 200;
		color: Color black.
		
	^ headerTitle