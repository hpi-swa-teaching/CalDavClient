toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALApp';
		extent: 1000 @ 700;
		children: OrderedCollection new.
		
	windowSpec children add: (self buildAddEventButton: aBuilder).	
	windowSpec children add: (self buildAddCalendarButton: aBuilder).
	windowSpec children add: (self buildEventList: aBuilder).
	windowSpec children add: (self buildCalendarList: aBuilder).
	windowSpec children add: (self buildDeleteEventButton: aBuilder).
	windowSpec children add: (self buildMonthViewButton: aBuilder).
	
	^ aBuilder build: windowSpec