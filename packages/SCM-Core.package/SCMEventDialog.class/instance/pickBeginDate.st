actions
pickBeginDate

	| colorPicker |
	
	colorPicker := SCMDatePicker 
		openForDialog: self 
		color: Color sky 
		label: 'Pick Begin Date'.
	self windows add: colorPicker owner.
	colorPicker 
		when: #dateChanged 
		send: #updateBeginDate: 
		to: self