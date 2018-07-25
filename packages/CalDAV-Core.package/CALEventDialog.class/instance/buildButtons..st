toolbuilding
buildButtons: aBuilder
 
	| editButton deleteButton buttons beginPickerButton endPickerButton height |
	
	buttons := OrderedCollection new.
	
	height := (self spacing * 7) + (self lineHeight * 7).
	editButton := aBuilder pluggableActionButtonSpec new.
	editButton
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: ((self borderRight / 2 + 0.01) @ height corner: self borderRight @ (height + self lineHeight));
		enabled: self isReadOnly not.
	buttons add: editButton.
	
	height := (self spacing * 7) + (self lineHeight * 7).
	deleteButton := aBuilder pluggableActionButtonSpec new.
	deleteButton
		model: self;
		action: #deleteEvent;
		label: 'Delete Event';
		frame: (self borderLeft @ height corner: (self borderRight / 2) @ (height + self lineHeight));
		enabled: self isReadOnly not.
	buttons add: deleteButton.
	
	height := (self spacing * 3) + (self lineHeight * 3).
	beginPickerButton := aBuilder pluggableActionButtonSpec new.
	beginPickerButton
		model: self;
		label: 'Pick Begin Date';
		action: #pickBeginDate;
		frame: (self borderLeft @ height corner: 0.2 @ (height + self lineHeight));
		enabled: self isReadOnly not.
	buttons add: beginPickerButton.
	
	height := (self spacing * 4) + (self lineHeight * 4).
	endPickerButton := aBuilder pluggableActionButtonSpec new.
	endPickerButton
		model: self;
		label: 'Pick End Date';
		action: #pickEndDate;
		frame: (self borderLeft @ height corner: 0.2 @ (height + self lineHeight));
		enabled: self isReadOnly not.
	buttons add: endPickerButton.
	
	buttons add: (self buildFullDayButton: aBuilder).
	
	^ buttons