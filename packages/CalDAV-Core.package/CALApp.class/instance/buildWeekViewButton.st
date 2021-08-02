toolbuilder
buildWeekViewButton

	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'w';
		size: 20 @ 20;
		functionName: #openWeekView.
	icon loadIcon.
	^ icon