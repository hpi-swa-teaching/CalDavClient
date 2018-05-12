toolbuilding
buildButtons: aBuilder

	|saveButton buttons|
	buttons := OrderedCollection new.
	saveButton := aBuilder pluggableActionButtonSpec new.
	saveButton
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: (0.01@0.76 corner: self borderRight@0.86).
	buttons add: saveButton.
	^buttons