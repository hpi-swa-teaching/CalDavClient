toolbuilder
buildAddCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openAddCalendarDialog;
		label: 'Add Calendar';
		frame: (0 @ 0.5 corner: 0.1 @ 0.6);
		yourself