toolbuilder
buildDeleteCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openDeleteCalendarDialog;
		label: 'Delete Calendar';
		frame: (0 @ 0.9 corner: 0.1 @ 1);
		yourself