as yet unclassified
createFormButton
	"creates a button to build the form"

	| button |
	button := SimpleButtonMorph new
		label: 'Create Event';
		actWhen: #buttonUp;
		target: EventForm new;
		actionSelector: 'createForm'.
	
	button openInWorld.
		