actions
pickColor

	| colorPicker |
	
	colorPicker := SCMNewColorPickerMorph 
		on: self 
		originalColor: self color
		setColorSelector: #color:
		label: self colorPickerLabelText.
	self windows add: colorPicker owner