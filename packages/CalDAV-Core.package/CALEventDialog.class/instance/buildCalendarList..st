toolbuilding
buildCalendarList: aBuilder

	^ aBuilder pluggableListSpec new
		model: self app;
		list: #editableCalendarNames;
		getIndex: #calendarIndex;
		setIndex: #calendarIndex:;
		frame: (self borderLeft @ 0.9 corner: self borderRight @ 1);
		yourself