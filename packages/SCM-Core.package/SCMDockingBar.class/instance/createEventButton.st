initialization
createEventButton

	| button |
	button := SimpleButtonMorph new
		label: 'Create Event';
		actWhen: #buttonUp;
		target: SCMEventForm;
		color: (Color r: 168 g: 219 b: 255 range: 255);
		actionSelector: 'createWithCalendars:';
		arguments: {self app calendars asOrderedCollection};
		yourself.		
			
		self widgets at: #createEvent put: button.
		self addMorph: button.
