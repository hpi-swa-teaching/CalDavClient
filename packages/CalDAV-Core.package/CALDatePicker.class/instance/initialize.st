CalendarMorph
initialize
	"One-time initialization of a new calendar."

	super initialize.
	date := Date today.
	stepTime := self minimumStepTime.
	shouldUpdate := false.
	self layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: self initialColor;
		cornerStyle: #rounded;
		initializeSubmorphs