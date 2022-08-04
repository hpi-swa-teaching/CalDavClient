running
setUp

	self eventDialog: (SCMAddEventDialog openWith: SCMMockCalendarRepository get).
	self colorPicker: (SCMNewColorPickerMorph on: self eventDialog model originalColor: self defaultColor setColorSelector: self defaultColorSelector label: self defaultLabel)