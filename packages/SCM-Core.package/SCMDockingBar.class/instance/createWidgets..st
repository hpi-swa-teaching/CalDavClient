initialization
createWidgets: aSCMApp

	self createButtonNamed: #addEvent target: aSCMApp actionSelector: #openAddEventDialog.
	self createButtonNamed: #switch target: aSCMApp actionSelector: #switch
