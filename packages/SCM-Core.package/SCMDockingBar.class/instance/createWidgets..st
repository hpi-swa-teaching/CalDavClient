initialization
createWidgets: aSCMApp

	self createButtonNamed: #addEvent target: aSCMApp actionSelector: #openAddEventDialog form: self class plusIcon andWidth: 25 @ 25.
	self createButtonNamed: #switch target: aSCMApp actionSelector: #switch form: self class exchangeIcon andWidth: 25 @ 25
