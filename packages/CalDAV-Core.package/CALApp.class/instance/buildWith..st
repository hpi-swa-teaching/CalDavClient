toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALApp';
		extent: 1000 @ 700;
		children: OrderedCollection new.
		
	windowSpec children
		add: (self buildAddEventButton: aBuilder);
		add: (self buildAddCalendarButton: aBuilder);
		add: (self buildMonthPane: aBuilder);
		add: (self buildCalendarList: aBuilder);
		add: (self buildDeleteCalendarButton: aBuilder);
		add: (self buildImportCalendarButton: aBuilder);
		add: (self buildMonthViewButton: aBuilder);
		add: (self buildWeekViewButton: aBuilder);
		add: (self buildRefreshButton: aBuilder).
	
	^ aBuilder build: windowSpec