initialization
createSwitchButtonFor: aSCMApp
	
	self createButtonNamed: #switch
		target: aSCMApp
		actionSelector: #switch
		form: self class exchangeIcon
		andHeight: self defaultWidgetHeight