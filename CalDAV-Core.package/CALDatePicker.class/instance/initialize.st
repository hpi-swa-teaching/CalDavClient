CalendarMorph
initialize

	super initialize.
	self 
		date: Date today;
		stepTime: self minimumStepTime;
		shouldUpdate: false;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: self initialColor;
		cornerStyle: #rounded;
		initializeSubmorphs;
		yourself 