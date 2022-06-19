initialization
createWidgets: aSCMApp

	self createButtonNamed: #addEvent
		target: aSCMApp actionSelector: #openAddEventDialog
		form: self class plusIcon
		andWidth: self defaultWidgetWidth.

	self createButtonNamed: #switch
		target: aSCMApp actionSelector: #switch
		form: self class exchangeIcon
		andWidth: self defaultWidgetWidth