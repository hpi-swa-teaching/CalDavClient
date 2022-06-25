toolbuilding
buildCalendarList: aBuilder

	^ aBuilder pluggableListSpec new
		model: self calendarManager;
		list: #editableCalendarNames;
		getIndex: #calendarIndex;
		setIndex: #calendarIndex:;
		frame: (self borderLeft @ (self lineOffsetOf: 8) corner: self borderRight @ (1 - self spacing));
		yourself