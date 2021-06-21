toolbuilding
buildEventListWith: aBuilder

	| y |
	
	y := self relativeDayButtonHeight + self relativeAddButtonHeight.
	^ aBuilder pluggableListSpec new
		model: self;
		list: #eventNames;
		getIndex: #currentIndex;
		setIndex: #currentIndex:;
		doubleClick: #openEventDetails;
		frame: (0 @ y corner: 1 @ (y + self relativeEventListHeight));
		yourself
		
	