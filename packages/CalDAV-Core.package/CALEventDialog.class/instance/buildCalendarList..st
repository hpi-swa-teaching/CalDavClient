toolbuilding
buildCalendarList: aBuilder

	^ aBuilder pluggableListSpec new
		model: self parent;
		list: #calendarNames;
		getIndex: #calendarIndex;
		setIndex: #calendarIndex:;
		frame: (self borderLeft @ 0.9 corner: self borderRight @ 1);
		yourself