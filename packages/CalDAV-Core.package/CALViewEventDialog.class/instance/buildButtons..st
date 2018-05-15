toolbuilding
buildButtons: aBuilder
 
	|editButton deleteButton buttons|
	
	buttons := OrderedCollection new.
	
	editButton := aBuilder pluggableActionButtonSpec new.
	editButton
		model: self;
		action: #editEvent;
		label: 'Edit Event';
		frame: (self borderRight / 2 + 0.01@0.76 corner: self borderRight@0.86).
	buttons add: editButton.
	
	deleteButton := aBuilder pluggableActionButtonSpec new.
	deleteButton
		model: self;
		action: #deleteEvent;
		label: 'Delete Event';
		frame: (0.01@0.76 corner: self borderRight / 2@0.86).
	buttons add: deleteButton.
	
	^buttons