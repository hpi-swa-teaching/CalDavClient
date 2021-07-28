toolbuilder
buildDeleteCalendarButton

	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'minus';
		size: 20 @ 20;
		functionName: #openDeleteCalendarDialog.
	icon loadIcon.
	^ icon