toolbuilder
buildAddCalendarButton
	
	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'add';
		size: 20 @ 20.
	icon loadIcon.
	^ icon