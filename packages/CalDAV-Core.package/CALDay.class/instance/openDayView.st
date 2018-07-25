open windows
openDayView

	| view |
	
	view := CALDayView openDay: self date asDate for: self app.
	self app when: #eventsChanged send: #updateDay to: view model.
	view height: 700