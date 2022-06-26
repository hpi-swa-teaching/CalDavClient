initialization
createSwitchButtonFor: aSCMApp
	
	self createButtonNamed: #switch
		target: aSCMApp actionSelector: #switch
		form: self class exchangeIcon
		andWidth: self defaultWidgetWidth