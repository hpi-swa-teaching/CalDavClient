toolbuilder
buildRefreshButton

	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'refresh';
		size: 20 @ 20.
	icon loadIcon.
	^ icon