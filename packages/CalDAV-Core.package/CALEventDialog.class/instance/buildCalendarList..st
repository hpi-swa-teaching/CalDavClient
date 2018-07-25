toolbuilding
buildCalendarList: aBuilder

	| height |
	
	height := (self lineHeight * 8) + (self spacing * 8).
	^ aBuilder pluggableListSpec new
		model: self app;
		list: #editableCalendarNames;
		getIndex: #calendarIndex;
		setIndex: #calendarIndex:;
		frame: (self borderLeft @ height corner: self borderRight @ (1 - self spacing));
		yourself