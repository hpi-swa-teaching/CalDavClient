actions
pickColor

	| colorPicker |
	
	colorPicker := SCMNewColorPickerMorph 
		on: self 
		originalColor: self color
		setColorSelector: #color:
		label: 'Pick Color'.
	self windows add: colorPicker owner