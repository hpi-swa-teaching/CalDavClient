toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALApp';
		extent: 1000 @ 700;
		children: OrderedCollection new.
		
	windowSpec children add: (self buildAddEventButton: aBuilder).
	windowSpec children add: (self buildEventList: aBuilder).
	
	^ aBuilder build: windowSpec