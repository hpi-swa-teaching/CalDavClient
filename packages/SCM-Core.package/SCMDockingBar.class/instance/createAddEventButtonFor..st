initialization
createAddEventButtonFor: aSCMApp
	
	self createButtonNamed: #addEvent
		target: aSCMApp
		actionSelector: #openAddEventDialog
		form: self class addEventIcon
		andHeight: self defaultWidgetHeight