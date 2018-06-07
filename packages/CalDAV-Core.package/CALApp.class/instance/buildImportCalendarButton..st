toolbuilder
buildImportCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #importCalendar;
		label: 'Import Calendar';
		frame: (0 @ 0.9 corner: 0.1 @ 1);
		yourself