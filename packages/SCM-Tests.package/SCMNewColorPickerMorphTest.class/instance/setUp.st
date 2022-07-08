accessing
setUp

	self eventDialog: (SCMAddEventDialog openFor: SCMCalendarRepository new).
	self colorPicker: (SCMNewColorPickerMorph on: self eventDialog model originalColor: self defaultColor setColorSelector: self defaultColorSelector label: self defaultLabel)