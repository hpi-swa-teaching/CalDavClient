running
setUp

	self eventDialog: (SCMAddEventDialog createWith: SCMMockCalendarRepository get).
	self colorPicker: (SCMNewColorPickerMorph on: self eventDialog model originalColor: self defaultColor setColorSelector: self defaultColorSelector label: self defaultLabel)