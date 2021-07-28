toolbuilder
buildQuickViewButton

	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'list';
		size: 30 @ 30;
		functionName: #openQuickView.
	icon loadIcon.
	^ icon