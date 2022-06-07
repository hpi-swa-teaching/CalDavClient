initialization
createWidgets: aSCMApp

	self createButtonNamed: #addEvent target: aSCMApp actionSelector: #openAddEventDialog.
	self createButtonNamed: #switchView target: aSCMApp actionSelector: #switchView
