toolbuilder
buildMonthViewButton

	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'm';
		size: 20 @ 20;
		functionName: #openMonthView.
	icon loadIcon.
	^ icon