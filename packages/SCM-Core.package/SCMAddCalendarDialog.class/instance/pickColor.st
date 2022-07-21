actions
pickColor

	| colorPicker |
	
	colorPicker := SCMNewColorPickerMorph 
		on: self 
		originalColor: self calendarColor
		setColorSelector: #calendarColor:
		label: 'Pick Color'.
	self windows add: colorPicker owner