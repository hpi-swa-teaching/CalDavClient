toolbuilder
buildDeadlinesViewButton

	| icon |
	icon := CALIcon new
		app: self;
		name: 'hourglass';
		size: 30 @ 30;
		functionName: #openDeadlinesView.
	icon loadIcon.
	^ icon