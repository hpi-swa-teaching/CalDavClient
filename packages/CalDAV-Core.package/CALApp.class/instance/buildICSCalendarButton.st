toolbuilder
buildICSCalendarButton

	| icon |
	icon := CALIcon new
		app: self;
		name: 'ics-format';
		size: 30 @ 30;
		functionName: #importSubscriptionCalendar.
	icon loadIcon.
	^ icon