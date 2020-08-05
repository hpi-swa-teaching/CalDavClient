drawing
setWindowStyles

	self withLayout.
	self styleContext addClass: #window.
	self addStyleClass: #withPadding.
	self color: Color gray;
		vertical:  true.
	self extent: 50@200.