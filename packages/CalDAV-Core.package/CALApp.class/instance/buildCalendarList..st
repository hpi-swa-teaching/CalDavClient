toolbuilder
buildCalendarList: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #calendarNames;
		getSelectionList: #isShowingEventsFor:;
		setSelectionList: #showEventsForCalendar:put:;
		frame: (0.1 @ 0 corner: 0.3 @ 1);
		yourself