toolbuilder
buildEditCalendarButton

	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'color-palette';
		size: 25 @ 25.
	icon loadIcon.
	^ icon