as yet unclassified
buildWith: builder

	| windowSpec buttonSpec listSpec|
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALApp';
		extent: 1000@700;
		children: OrderedCollection new.
		
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		action: #addEvent;
		label: 'Add Event';
		frame: (0@0 corner: 0.1@1).
	windowSpec children add: buttonSpec.	
		
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #events;
		frame: (0.1@0 corner: 1@1).
	windowSpec children add: listSpec.		
		
	^builder build: windowSpec