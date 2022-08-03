accessing
setUp

	self eventDialog: (SCMAddEventDialog createWith: SCMCalendarRepository getDummy).
	self colorPicker: (SCMNewColorPickerMorph on: self eventDialog model originalColor: self defaultColor setColorSelector: self defaultColorSelector label: self defaultLabel)