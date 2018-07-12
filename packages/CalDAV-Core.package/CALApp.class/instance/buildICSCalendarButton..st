toolbuilder
buildICSCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #importCalendar;
		label: 'Import ICS Calendar';
		frame: (0 @ 0.7 corner: 0.1 @ 0.8);
		yourself