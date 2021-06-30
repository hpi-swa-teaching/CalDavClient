toolbuilder
buildCalendarList: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #calendarNames;
		getSelectionList: #isShowingEventsFor:;
		setSelectionList: #showEventsForCalendar:put:;
		frame: (0 @ 0.06 corner: 0.15 @ 1);
		yourself