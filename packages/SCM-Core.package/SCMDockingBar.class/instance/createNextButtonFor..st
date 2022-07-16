initialization
createNextButtonFor: aSCMApp

	self createButtonNamed: #showNextViewPage
		target: aSCMApp actionSelector: #showNextViewPage
		form: self class arrowRightIcon
		andHeight: self defaultWidgetHeight