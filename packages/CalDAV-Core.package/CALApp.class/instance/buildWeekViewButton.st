toolbuilder
buildWeekViewButton

	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'w';
		size: 20 @ 20.
	icon loadIcon.
	^ icon