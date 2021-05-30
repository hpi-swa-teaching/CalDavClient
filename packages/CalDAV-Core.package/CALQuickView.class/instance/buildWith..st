as yet unclassified
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALQuickView';
		extent: 200 @ 200;
		children: OrderedCollection new.
		
	windowSpec children
		add: (self buildEventListWith: aBuilder).
	
	^ aBuilder build: windowSpec