toolbuilding
buildButtons: aBuilder
 
	| editButton |
	editButton := aBuilder pluggableActionButtonSpec new.
	editButton
		model: self;
		action: #editEvent;
		label: 'Edit Event';
		frame: (0.01@0.76 corner: self borderRight@0.86).
	^ OrderedCollection new
			add: editButton;
			yourself