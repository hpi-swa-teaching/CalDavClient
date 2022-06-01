initialization
createEventButton

	| button calendar |
	calendar := SCMCalendar new.
	button := SimpleButtonMorph new
		label: 'Create Event';
		actWhen: #buttonUp;
		target: SCMEventForm;
		actionSelector: 'createWithCalendar:';
		arguments: {calendar} asOrderedCollection;
		yourself.
		
	self widgets at: #createEvent put: button.
	self addMorph: button.