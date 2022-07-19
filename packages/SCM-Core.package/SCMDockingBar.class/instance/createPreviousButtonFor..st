initialization
createPreviousButtonFor: aSCMApp
	
	self createButtonNamed: #showPreviousViewPage
		target: aSCMApp
		actionSelector: #showPreviousViewPage
		form: self class arrowLeftIcon
		andHeight: self defaultWidgetHeight