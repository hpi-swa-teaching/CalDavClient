actions
pickColor

	| datePicker |
	
	datePicker := SCMNewColorPickerMorph 
		on: self 
		originalColor: self defaultEventColor 
		setColorSelector: #color:
		label: 'Pick Color'.
	self windows add: datePicker owner.