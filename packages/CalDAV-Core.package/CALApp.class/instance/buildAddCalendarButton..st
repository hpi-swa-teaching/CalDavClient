toolbuilder
buildAddCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openAddCalendarDialog;
		label: 'Add Calendar';
		frame: (0 @ 0.9 corner: 0.1 @ 1);
		yourself