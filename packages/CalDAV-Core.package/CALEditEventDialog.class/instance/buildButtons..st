toolbuilding
buildButtons: aBuilder
 
	| editButton deleteButton buttons beginPickerButton endPickerButton |
	
	buttons := OrderedCollection new.
	
	editButton := aBuilder pluggableActionButtonSpec new.
	editButton
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: ((self borderRight / 2 + 0.01) @ 0.76 corner: self borderRight @ 0.86).
	buttons add: editButton.
	
	deleteButton := aBuilder pluggableActionButtonSpec new.
	deleteButton
		model: self;
		action: #deleteEvent;
		label: 'Delete Event';
		frame: (0.01 @ 0.76 corner: (self borderRight / 2) @ 0.86).
	buttons add: deleteButton.
	
	beginPickerButton := aBuilder pluggableActionButtonSpec new.
	beginPickerButton
		model: self;
		label: 'Pick Begin Date';
		action: #pickBeginDate;
		frame: (self borderLeft@0.32 corner: 0.2@0.42).
	buttons add: beginPickerButton.
		
	endPickerButton := aBuilder pluggableActionButtonSpec new.
	endPickerButton
		model: self;
		label: 'Pick End Date';
		action: #pickEndDate;
		frame: (self borderLeft @ 0.43 corner: 0.2 @ 0.53).
	buttons add: endPickerButton.
	
	^ buttons