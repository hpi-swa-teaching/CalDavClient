toolbuilder
buildImportCalendarButton

	| icon |
	
	icon := CALIcon new
		app: self;
		name: 'caldav-format';
		size: 30 @ 30.
	icon loadIcon.
	^ icon