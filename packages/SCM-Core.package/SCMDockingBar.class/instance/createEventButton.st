initialization
createEventButton

	^ SimpleButtonMorph new
		label: 'Create Event';
		actWhen: #buttonUp;
		target: SCMEventForm;
		actionSelector: 'createWithCalendars:';
		arguments: {self app calendars asOrderedCollection};
		yourself
