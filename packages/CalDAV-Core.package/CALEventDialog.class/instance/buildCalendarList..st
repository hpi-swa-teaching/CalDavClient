toolbuilding
buildCalendarList: aBuilder

	^ aBuilder pluggableListSpec new
		model: self parent;
		list: #calendarNames;
		getIndex: #calendarIndex;
		setIndex: #calendarIndex:;
		frame: (0 @ 0.9 corner: 1 @ 1);
		yourself