toolbuilder
buildAddEventButton

	| icon |
	
	icon := CALIcon new
		app: self app;
		name: 'add';
		size: 30 @ 30.
	icon loadIcon.
	^ icon