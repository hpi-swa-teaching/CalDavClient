toolbuilder
buildDeadlinesViewButton

	| icon |
	
	icon := CALIcon new
		app: self app;
		name: 'hourglass';
		size: 30 @ 30.
	icon loadIcon.
	^ icon