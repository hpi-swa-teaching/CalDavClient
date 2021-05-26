toolbuilder
buildEditCalendarButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openDropDown;
		label: 'Edit Calendar';
		frame: (0 @ 0.4 corner: 0.1 @ 0.5);
		yourself