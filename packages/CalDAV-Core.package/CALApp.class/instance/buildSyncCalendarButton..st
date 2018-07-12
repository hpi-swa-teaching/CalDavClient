toolbuilder
buildSyncCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #importSyncCalendar;
		label: 'Sync CalDAV Calendar';
		frame: (0 @ 0.6 corner: 0.1 @ 0.7);
		yourself