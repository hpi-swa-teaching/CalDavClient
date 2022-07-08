toolbuilding
buildCalendarList: aBuilder

	^ aBuilder pluggableListSpec new
		model: self calendarList;
		list: #calendarsNames;
		getIndex: #calendarIndex;
		setIndex: #calendarIndex:;
		frame: (self borderLeft @ (self lineOffsetOf: 2) corner: self borderRight @ ((self lineOffsetOf: 2) + self lineHeight))