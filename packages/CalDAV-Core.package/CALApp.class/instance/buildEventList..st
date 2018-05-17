toolbuilder
buildEventList: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #eventNames;
		getIndex: #currentIndex;
		setIndex: #currentIndex:;
		doubleClick: #openViewEventDialog;
		frame: (0.1 @ 0 corner: 1 @ 1);
		yourself