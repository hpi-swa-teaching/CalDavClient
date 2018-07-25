toolbuilding
buildButtons: aBuilder

	| saveButton buttons beginPickerButton endPickerButton |
	
	saveButton := aBuilder pluggableActionButtonSpec new.
	saveButton
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: (0.01 @ 0.76 corner: self borderRight @ 0.86).
	beginPickerButton := aBuilder pluggableActionButtonSpec new.
	beginPickerButton
		model: self;
		label: 'Pick Begin Date';
		action: #pickBeginDate;
		frame: (self borderLeft @ 0.32 corner: 0.2 @ 0.42).
	endPickerButton := aBuilder pluggableActionButtonSpec new.
	endPickerButton
		model: self;
		label: 'Pick End Date';
		action: #pickEndDate;
		frame: (self borderLeft @ 0.43 corner: 0.2 @ 0.53).
		
	 ^ buttons := OrderedCollection new
		add: saveButton;
		add: beginPickerButton;
		add: endPickerButton;
		add: (self buildFullDayButton: aBuilder);
		yourself