toolbuilder
buildImportCalendarButton

	| icon |
	icon := CALIcon new
		app: self;
		name: 'caldav-format';
		size: 30 @ 30;
		functionName: #importWebDAVCalendar.
	icon loadIcon.
	^ icon