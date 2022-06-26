initialization
createAddButtonFor: aSCMApp
	
	self createButtonNamed: #addEvent
		target: aSCMApp actionSelector: #openAddEventDialog
		form: self class plusIcon
		andWidth: self defaultWidgetWidth