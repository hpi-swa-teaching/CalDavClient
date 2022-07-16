initialization
createAddButtonFor: aSCMApp
	
	self createButtonNamed: #addEvent
		target: aSCMApp actionSelector: #openAddEventDialog
		form: self class plusIcon
		andHeight: self defaultWidgetHeight