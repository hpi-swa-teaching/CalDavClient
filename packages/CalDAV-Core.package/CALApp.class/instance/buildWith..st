toolbuilder
buildWith: aBuilder

	| windowSpec buttonSpec listSpec|
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALApp';
		extent: 1000@700;
		children: OrderedCollection new.
		
	buttonSpec := aBuilder pluggableButtonSpec new.
	buttonSpec
		model: self;
		action: #openAddEventDialog;
		label: 'Add Event';
		frame: (0@0 corner: 0.1@1).
	windowSpec children add: buttonSpec.	
		
	listSpec := aBuilder pluggableListSpec new.
	listSpec
		model: self;
		list: #eventNames;
		getIndex: #currentIndex;
		setIndex: #currentIndex:;
		doubleClick: #openViewEventDialog;
		frame: (0.1@0 corner: 1@1).
	windowSpec children add: listSpec.		
		
	^aBuilder build: windowSpec