toolbuilder
buildRefreshButton

	| icon |
		icon := CALIcon new
			app: self;
			name: 'refresh';
			size: 30 @ 30;
			functionName: #refreshCalendars.
		icon loadIcon.
		^ icon