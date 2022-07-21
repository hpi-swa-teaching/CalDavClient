actions
pickColor

	| colorPicker |
	
	colorPicker := SCMNewColorPickerMorph 
		on: self 
		originalColor: self calendarColor
		setColorSelector: #calendarColor:
		label: self colorPickerLabelText.
	self windows add: colorPicker owner