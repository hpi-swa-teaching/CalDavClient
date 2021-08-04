toolbuilder
buildMonthViewButton

	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'm';
		size: 20 @ 20.
	icon loadIcon.
	^ icon