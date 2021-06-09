toolbuilder
buildEventListWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #events;
		getIndex: #currentIndex;
		setIndex: #currentIndex:;
		doubleClick: #openEventDetails;
		frame: (0 @ 0 corner: 1 @ 1);
		yourself