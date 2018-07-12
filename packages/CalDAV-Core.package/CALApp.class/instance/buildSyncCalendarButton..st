toolbuilder
buildSyncCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #importSyncCalendar;
		label: 'Sync Calendar';
		frame: (0 @ 0.5 corner: 0.1 @ 0.6);
		yourself