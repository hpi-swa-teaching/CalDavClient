initialization
createAddCalendarButtonFor: aSCMApp
	
	self createButtonNamed: #addCalendar
		target: aSCMApp
		actionSelector: #openAddCalendarDialog
		form: self class addCalendarIcon
		andHeight: self defaultWidgetHeight