toolbuilding
buildCalendarList: aBuilder

	^ aBuilder pluggableListSpec new
		model: self app;
		list: #editableCalendarNames;
		getIndex: #calendarIndex;
		setIndex: #calendarIndex:;
		frame: (self borderLeft @ (self lineOffsetOf: 8) corner: self borderRight @ (1 - self spacing));
		yourself