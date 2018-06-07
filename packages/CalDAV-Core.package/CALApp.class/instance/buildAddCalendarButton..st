toolbuilder
buildAddCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openAddCalendarDialog;
		label: 'Add Calendar';
		frame: (0 @ 0.8 corner: 0.1 @ 0.9);
		yourself