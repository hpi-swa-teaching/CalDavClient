toolbuilder
buildAppButton

	| icon |
	
	icon := CALIcon new
		app: self app;
		name: 'calendar';
		size: 30 @ 30;
		functionName: #openApp.
	icon loadIcon.
	^ icon