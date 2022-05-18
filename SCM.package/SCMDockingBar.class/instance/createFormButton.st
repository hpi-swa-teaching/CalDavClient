as yet unclassified
createFormButton

	| button |
	button := SimpleButtonMorph new
		label: 'Create Event';
		actWhen: #buttonUp;
		target: (SCMEventForm new);
		actionSelector: 'createForm'.
		
		^ button.