toolbuilder
buildCalendarList: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #calendarNames;
		getIndex: #currentIndex;
		setIndex: #currentIndex:;
		"doubleClick: #openEditEventDialog;"
		frame: (0.1 @ 0 corner: 0.3 @ 1);
		yourself