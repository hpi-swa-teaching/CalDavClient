toolbuilder
buildEventList: aBuilder

	^ (CALMonthPane new
				parent: self;
				buildSpec: aBuilder)
				frame: (0.3 @ 0 corner: 1 @ 1)

	"^ aBuilder pluggableListSpec new
		model: self;
		list: #eventNames;
		getIndex: #currentIndex;
		setIndex: #currentIndex:;
		doubleClick: #openEditEventDialog;
		frame: (0.3 @ 0 corner: 1 @ 1);
		yourself"