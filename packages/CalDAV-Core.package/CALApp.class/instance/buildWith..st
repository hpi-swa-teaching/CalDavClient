toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALApp';
		extent: 1000 @ 700;
		children: OrderedCollection new.
	self buildAddCalendarButton.	
	windowSpec children
		add: (self buildAddCalendarButton: aBuilder);
		add: (self buildMonthPanel: aBuilder);
		add: (self buildCalendarList: aBuilder);
		add: (self buildDeleteCalendarButton: aBuilder);
		add: (self buildICSCalendarButton: aBuilder);
		add: (self buildMonthViewButton: aBuilder);
		add: (self buildWeekViewButton: aBuilder);
		add: (self buildDeadlinesViewButton: aBuilder);
		add: (self buildQuickViewButton: aBuilder);
		add: (self buildImportCalendarButton: aBuilder);
		add: (self buildRefreshButton: aBuilder).
	
	^ aBuilder build: windowSpec