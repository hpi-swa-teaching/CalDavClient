toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'CALQuickView';
		extent: 200 @ 200;
		children: OrderedCollection new;
		yourself.
	windowSpec children
		add: (self buildEventListWith: aBuilder).
	^ aBuilder build: windowSpec