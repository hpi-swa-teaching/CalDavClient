toolbuilder
buildEventList: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #eventNames;
		getIndex: #currentIndex;
		setIndex: #currentIndex:;
		doubleClick: #openEventDetails;
		frame: (0.3 @ 0 corner: 1 @ 1);
		yourself