initialization
createEventButton

	| button |
	button := SimpleButtonMorph new
		label: 'Create Event';
		actWhen: #buttonUp;
		target: SCMEventForm;
		actionSelector: 'createWithCalendars:';
		arguments: {self app calendars asOrderedCollection};
		yourself.		
			
		self widgets at: #createEvent put: button.
		self addMorph: button.
