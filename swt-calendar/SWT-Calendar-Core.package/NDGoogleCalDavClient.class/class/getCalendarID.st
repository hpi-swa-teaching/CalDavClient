as yet unclassified
getCalendarID

		|calendarIDDialog|
		
		calendarIDDialog := PHDialog new.
		calendarIDDialog content:(PHPage new withPadding; add: (PHLabel new text: 'Connection to Google was successful.
Please enter your CalendarID:'); add: (PHTextArea new); add:((PHButton label: 'OK') when: #clicked send: #abandon to: calendarIDDialog)).
			calendarIDDialog openFor: self.
			calendarIDDialog submorphs third inspect.