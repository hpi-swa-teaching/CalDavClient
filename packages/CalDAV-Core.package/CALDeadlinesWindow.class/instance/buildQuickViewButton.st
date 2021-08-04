toolbuilder
buildQuickViewButton

	| icon |
	icon := CALIcon new
		app: self app;
		name: 'list';
		size: 30 @ 30.
	icon loadIcon.
	^ icon