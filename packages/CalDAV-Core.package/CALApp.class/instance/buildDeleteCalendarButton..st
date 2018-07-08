toolbuilder
buildDeleteCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #deleteCalendar;
		label: 'Delete Calendar';
		frame: (0 @ 0.7 corner: 0.1 @ 0.8);
		yourself